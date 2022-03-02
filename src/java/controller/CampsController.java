/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CampDAO;
import dao.CategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Camp;
import model.Category;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "CampsController", urlPatterns = {"/campsites"})
public class CampsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Category> categoryList = new CategoryDAO().getAllCategories();

        int page = 1;
        int pageSize = 4;
        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }

        CampDAO campDAO = new CampDAO();
        List<Camp> campList = campDAO.getCampsWithPaging(page, pageSize);
        int totalCamps = campDAO.getTotalCamps();
        int totalPages = totalCamps / pageSize;
        if (totalPages % pageSize != 0) {
            totalPages += 1;
        }

        request.setAttribute("page", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("categoryList", categoryList);
        request.setAttribute("campList", campList);
        request.getRequestDispatcher("campsites.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
