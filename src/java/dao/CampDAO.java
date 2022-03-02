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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Camp;
import model.Category;

/**
 *
 * @author Administrator
 */
public class CampDAO {

    public List<Camp> getCampsByCategory(int categoryId) {
        List<Camp> list = new ArrayList<>();
        try {
            String query = "select * from Camp where Camp.CategoryID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Camp camp = Camp.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .price(rs.getDouble(3))
                        .description(rs.getString(4))
                        .imageUrl(rs.getString(5))
                        .createdDate(rs.getString(6))
                        .categoryId(rs.getInt(7)).build();
                list.add(camp);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Camp> getCampsWithPaging(int page, int pageSize) {
        List<Camp> list = new ArrayList<>();
        try {
            String query = "select * from Camp order by CampID\n"
                    + "offset (?-1)*? row fetch next ? rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, page);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Camp camp = Camp.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .price(rs.getDouble(3))
                        .description(rs.getString(4))
                        .imageUrl(rs.getString(5))
                        .createdDate(rs.getString(6))
                        .categoryId(rs.getInt(7)).build();
                list.add(camp);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public int getTotalCamps() {
        try {
            String query = "select count(*) from Camp";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
