/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import dao.BlogDAO;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import model.Blog;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author tranp
 */
public class ShowBlogsActionSupport extends ActionSupport {

    private ArrayList<Blog> list;

    public ArrayList<Blog> getList() {
        return list;
    }

    public void setList(ArrayList<Blog> list) {
        this.list = list;
    }

    public ShowBlogsActionSupport() {
    }

    public String execute() throws Exception {
        BlogDAO dao = new BlogDAO();
        list = dao.selectAll();
        return SUCCESS;
    }

    private Blog blogDetail;

    public Blog getBlogDetail() {
        return blogDetail;
    }

    public void setBlogDetail(Blog blogDetail) {
        this.blogDetail = blogDetail;
    }

    public String displayById() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id_blog"));
        BlogDAO dao = new BlogDAO();
        try {
            Blog b = dao.getBlogById(id);
            dao.updateView(b, 1);
            blogDetail = b;
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "fail";

    }

}
