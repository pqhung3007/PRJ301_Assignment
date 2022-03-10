/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Administrator
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String username = null;
        String password = null;

        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("username")) {
                username = cooky.getValue();
            }
            if (cooky.getName().equals("password")) {
                password = cooky.getValue();
            }
            if (username != null && password != null) {
                break;
            }
        }

         // if there's acocunt in cookie, don't need to authorize again
        if (username != null && password != null) {
            Account account = new AccountDAO().login(username, password);
            if (account != null) { // valid cookie
                request.getSession().setAttribute("account", account);
                response.sendRedirect("campsites");
                return;
            }
        }

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean remember = request.getParameter("remember") != null;

        // valid info => save to session, otherwise deny access
        Account account = new AccountDAO().login(username, password);
        if (account != null) {
            if (remember) {
                Cookie uCookie = new Cookie("username", username);
                uCookie.setMaxAge(60 * 60 * 24); // 1 day duration
                Cookie pCookie = new Cookie("password", password);
                pCookie.setMaxAge(60 * 60 * 24);

                response.addCookie(uCookie);
                response.addCookie(pCookie);
            }

            request.getSession().setAttribute("account", account);
            response.sendRedirect("campsites");
        } else {
            request.setAttribute("error", "Username or password invalid");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
