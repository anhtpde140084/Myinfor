/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminController;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import dao.BlogDAO;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import model.Blog;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author tranp
 */
public class GetAllBlogActionSupport extends ActionSupport {

    private ArrayList<Blog> list;

    public ArrayList<Blog> getList() {
        return list;
    }

    public void setList(ArrayList<Blog> list) {
        this.list = list;
    }

    public GetAllBlogActionSupport() {
    }

    public String execute() throws Exception {
        BlogDAO dao = new BlogDAO();
        list = dao.selectAll();
        return SUCCESS;
    }

    //==========================================================================
    // get blog by ID
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
            blogDetail = b;
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "fail";

    }

    public String DeleteBlog() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id_blog"));
        BlogDAO blogDao = new BlogDAO();
        if (blogDao.DeleteBlog(id) > 0) {
            return SUCCESS;
        }
        return "fail";
    }
    //==========================================================================

}
