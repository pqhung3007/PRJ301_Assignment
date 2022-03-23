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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Booking;
import model.Reservation;
import model.ReservationDetail;

/**
 *
 * @author Administrator
 */
public class ReservationDAO {

    public int createReservationId(Reservation reservation) {
        try {
            String query = "INSERT INTO [dbo].[Reservations]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[customer_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, reservation.getAccountId());
            ps.setDouble(2, reservation.getTotalPrice());
            ps.setString(3, reservation.getNote());
            ps.setInt(4, reservation.getCustomerId());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Reservation> getAllRes() {
        List<Reservation> list = new ArrayList<>();
        try {
            String sql = "select * from Reservations";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Reservation reservation = Reservation.builder()
                        .id(rs.getInt(1))
                        .accountId(rs.getInt(2))
                        .totalPrice(rs.getDouble(3))
                        .note(rs.getString(4))
                        .createdDate(rs.getString(5))
                        .customerId(rs.getInt(6))
                        .build();
                list.add(reservation);
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<ReservationDetail> getAllReDe() {
        List<ReservationDetail> list = new ArrayList<>();
        try {
            String sql = "select * from ReservationDetail";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ReservationDetail reDetail = ReservationDetail.builder()
                        .id(rs.getInt("id"))
                        .reservationId(rs.getInt("reservation_id"))
                        .campName(rs.getString("campName"))
                        .campImage(rs.getString("campImage"))
                        .campPrice(rs.getDouble("campPrice"))
                        .numberOfPerson(rs.getInt("numberOfPerson"))
                        .build();
                list.add(reDetail);
            }
        } catch (Exception ex) {
        }
        return list;
    }

}
