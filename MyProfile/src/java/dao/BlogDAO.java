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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;

/**
 *
 * @author tranp
 */
public class BlogDAO {

    public ArrayList<Blog> selectAll() {
        ArrayList<Blog> list = new ArrayList<Blog>();
        try {
            Connection con = ConnectDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Blog order by id desc");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("Id"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setCreate_date(rs.getDate("Create_date"));
                blog.setView(rs.getInt("viewer"));
                blog.setImg(rs.getString("Img_Front"));
                blog.setTag(rs.getString("Tag"));
                System.out.println("Get ok");
                list.add(blog);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Blog getBlogById(int id) {
        Connection con = ConnectDB.getConnection();
        Blog blog = null;
        try {
            String sql = "Select * from Blog where Id='" + id + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                int idblog = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                String img = rs.getString(4);
                Date date = rs.getDate(5);
                String tag = rs.getString(6);
                int viewer = rs.getInt(7);
                blog = new Blog(id, title, content, img, date, tag, viewer);
                System.out.println("Get ok");
                con.close();
            } else {
                System.out.println("This id does not exist");
            }

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return blog;
    }

    public boolean AddBlog(Blog m) throws Exception {
        String sql = "insert into Blog (Title , Content, create_date, Img_Front, Tag) values(?,?,?,?,?)";
        try {
            Connection con = ConnectDB.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, m.getTitle());
            pstmt.setString(2, m.getContent());
            pstmt.setDate(3, (java.sql.Date) m.getCreate_date());
            pstmt.setString(4, m.getImg());
            pstmt.setString(5, m.getTag());
            return pstmt.executeUpdate() > 0;
        } catch (Exception ex) {
            System.out.println("" + ex);
        }
        return false;
    }

    public int updateView(Blog a, int count) throws Exception {
        Connection con = ConnectDB.getConnection();
        a.setView(a.getView() + count);
        String sql = "Update Blog Set viewer = " + a.getView() + "where id = '" + a.getId() + "'";
        Statement st = con.createStatement();
        return st.executeUpdate(sql);
    }

    public int DeleteBlog(int id) {
        int status = 0;
        try {
            Connection con = ConnectDB.getConnection();
            PreparedStatement ps = con.prepareStatement("Delete from Blog Where id = ?");
            ps.setInt(1, id);
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public ArrayList<Blog> searchBlog(String titleSe) {
        ArrayList<Blog> list = new ArrayList<Blog>();
        try {
            Connection con = ConnectDB.getConnection();
            String sql = "Select * from Blog where title Like '%" + titleSe + "%'";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setTitle(rs.getString("title"));
                blog.setContent(rs.getString("content"));
                blog.setCreate_date(rs.getDate("Create_datet"));
                blog.setView(rs.getInt("view"));
                blog.setImg(rs.getString("img"));
                blog.setTag(rs.getString("tag"));
                System.out.println("Get ok");
                list.add(blog);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int updateBlog(int id, String title, String content, Date date, String img, String tag) {
        int rc = 0;
        try {
            String sql = "UPDATE Blog SET title=?, content=?, create_date=?, Img_Front=?, Tag=? WHERE id=?";
            Connection con = ConnectDB.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, title);
            stmt.setString(2, content);
            stmt.setDate(3, (java.sql.Date) date);
            stmt.setString(4, img);
            stmt.setString(5, tag);
            stmt.setInt(6, id);
            rc = stmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return rc;
    }

    public static void main(String[] args) throws Exception {
        BlogDAO dao = new BlogDAO();
        Date now = new Date();
        java.sql.Date date = new java.sql.Date(now.getTime());

        Blog b = dao.getBlogById(1);
        System.out.println(b.toString());
        if(dao.updateBlog(1, "a", "a", date, "", "a")>0){
            System.out.println("ok");
        }
    }

}
