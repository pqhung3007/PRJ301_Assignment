/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CustomerDAO;
import dao.ReservationDAO;
import dao.ReservationDetailDAO;
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
import model.Customer;
import model.Reservation;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();

            Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("book");
            if (booking == null) {
                booking = new LinkedHashMap<>();
            }

            System.out.println(booking);
            session.setAttribute("book", booking);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }
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
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        
        //save customer
        Customer customer = Customer.builder()
                .name(name)
                .phone(phone)
                .address(address)
                .build();
        int customerId = new CustomerDAO().createCustomerId(customer);
        
        //save reservations
        HttpSession session = request.getSession();
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("book");
        if (booking == null) {
            booking = new LinkedHashMap<>();
        }
        double total = 0;
        for (Map.Entry<Integer, Booking> entry : booking.entrySet()) {
            Integer key = entry.getKey();
            Booking b = entry.getValue();
            total += b.getNumOfPerson() * b.getCamp().getPrice();
        }

        Reservation reservation = Reservation.builder()
                .accountId(1)
                .totalPrice(total)
                .note(note)
                .customerId(customerId)
                .build();
        
        int reservationId = new ReservationDAO().createReservationId(reservation);

        //save reservation detail
        new ReservationDetailDAO().saveBooking(reservationId, booking);
        
        session.removeAttribute("book");
        response.sendRedirect("thankyou");
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
