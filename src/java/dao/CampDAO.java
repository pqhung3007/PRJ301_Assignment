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

    public List<Camp> getAllCamps() {
        List<Camp> list = new ArrayList<>();
        try {
            String query = "select * from Camp";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
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

}
