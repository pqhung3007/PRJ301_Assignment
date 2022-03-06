/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Booking;

/**
 *
 * @author Administrator
 */
public class ReservationDetailDAO {

    public void saveBooking(int reservationId, Map<Integer, Booking> booking) {
        try {
            String query = "INSERT INTO [dbo].[ReservationDetail]\n"
                    + "           ([order_id]\n"
                    + "           ,[campName]\n"
                    + "           ,[campImage]\n"
                    + "           ,[campPrice]\n"
                    + "           ,[numberOfPerson])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, reservationId);
            
            for (Map.Entry<Integer, Booking> entry : booking.entrySet()) {
                Integer campId = entry.getKey();
                Booking b = entry.getValue();
                ps.setString(2, b.getCamp().getName());
                ps.setString(3, b.getCamp().getImageUrl());
                ps.setDouble(4, b.getCamp().getPrice());
                ps.setInt(5, b.getNumOfPerson());
                ps.executeUpdate();
                
            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
