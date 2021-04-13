/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import configdb.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.InforAccount;

/**
 *
 * @author tranp
 */
public class InforAccountDAO {

    public InforAccount GetInfor() {
        InforAccount acc = null;
        try {
            Connection con = ConnectDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from InforAcc");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idAcc = rs.getInt(1);
                String name = rs.getString(2);
                String birthday = rs.getString(3);
                int age = rs.getInt(4);
                String country = rs.getString(5);
                String city = rs.getString(6);
                String email = rs.getString(7);
                acc = new InforAccount(idAcc, name, age, country, city, email, birthday);          
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return acc;
    }
    
    public InforAccount GetAccout(String username) {
        InforAccount acc = null;
        try {
            Connection con = ConnectDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from InforAcc where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idAcc = rs.getInt(1);
                String name = rs.getString(2);
                String birthday = rs.getString(3);
                int age = rs.getInt(4);
                String country = rs.getString(5);
                String city = rs.getString(6);
                String email = rs.getString(7);
                acc = new InforAccount(idAcc, name, age, country, city, email, birthday);          
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return acc;
    }
    
    public int checkLogin(String username, String password) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        InforAccount ad = null;
        int rc = 0;
        String sql = "Select * from InforAcc where username=? and password=?";
        try {
            con = ConnectDB.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
               rc=1;
            }
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rc;
    }
    public static void main(String[] args) throws Exception {
        InforAccountDAO dao = new InforAccountDAO();
        InforAccount acc = dao.GetInfor();
        System.out.println(acc.toString());
       acc = dao.GetAccout("tranphianh");
        System.out.println(acc.toString());
    }

}
