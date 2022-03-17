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
            String sql = "select * from Camp";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Camp product = Camp.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .price(rs.getDouble(3))
                        .description(rs.getString(4))
                        .imageUrl(rs.getString(5))
                        .createdDate(rs.getString(6))
                        .categoryId(rs.getInt(7)).build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

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

    public List<Camp> getSearchResults(String keyword) {
        List<Camp> list = new ArrayList<>();

        try {
            String query = "select * from Camp where CampName like ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + keyword + "%");
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

    public Camp getCampById(int campId) {
        try {
            String query = "select * from Camp where CampID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, campId);
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
                return camp;
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void createNewCamp(String name, double price, String description, String image, int category) {
        try {
            String query = "INSERT INTO [dbo].[Camp]\n"
                    + "           ([CampID]\n"
                    + "           ,[CampName]\n"
                    + "           ,[Price]\n"
                    + "           ,[Description]\n"
                    + "           ,[ImageUrl]\n"
                    + "           ,[CategoryID])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, 17);
            ps.setString(2, name);
            ps.setDouble(3, price);
            ps.setString(4, description);
            ps.setString(5, image);
            ps.setInt(6, category);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void deleteCamp(String id) {
        String query = "delete from Camp where CampID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void updateCamp(int id, String name, double price, String description, String image, int category) {
        try {
            String query = "UPDATE [dbo].[Camp]\n"
                    + "   SET [CampName] = ?\n"
                    + "      ,[Price] = ?\n"
                    + "      ,[Description] = ?\n"
                    + "      ,[ImageUrl] = ?\n"
                    + "      ,[CategoryID] = ?\n"
                    + " WHERE CampID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setString(3, description);
            ps.setString(4, image);
            ps.setInt(5, category);
            ps.setInt(6, id);
            
            System.out.println(id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

}
