/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CampDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Booking;
import model.Camp;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "BookController", urlPatterns = {"/book"})
public class BookController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int campId = Integer.parseInt(request.getParameter("campId"));

        HttpSession session = request.getSession();
        Map<Integer, Booking> bookings = (Map<Integer, Booking>) session.getAttribute("bookings");
        if (bookings == null) {
            bookings = new LinkedHashMap<>();
        }
        
        // camp has already booked
        if (bookings.containsKey(campId)) {
            int oldQuantity = bookings.get(campId).getNumOfPerson();
            bookings.get(campId).setNumOfPerson(oldQuantity+1);
        } else {// camp hasn't booked yet
            Camp camp = new CampDAO().getCampById(campId);
            bookings.put(campId, Booking.builder().camp(camp).numOfPerson(1).build());
        }
        
        // save booking to session
        session.setAttribute("bookings", bookings);
        System.out.println(bookings);
        response.sendRedirect("camp?campId="+campId);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
