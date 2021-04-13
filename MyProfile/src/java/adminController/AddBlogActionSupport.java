/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminController;

import com.opensymphony.xwork2.ActionSupport;
import dao.BlogDAO;
import java.util.Date;
import model.Blog;

/**
 *
 * @author tranp
 */
public class AddBlogActionSupport extends ActionSupport {

    private String title;
    private String img;
    private String tag;
    private String content;
    private String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public AddBlogActionSupport() {
    }

    public String execute() throws Exception {
        BlogDAO dao = new BlogDAO();
        Date now = new Date();
        java.sql.Date Create_date = new java.sql.Date(now.getTime());

        if (dao.AddBlog(new Blog( title, content, img, Create_date, tag))) {
            msg = "Add successfull!";
            return SUCCESS;
        } else {
            msg = "Add unsuccessfull";
            return "fail";
        }

    }
    
    
    
}
