/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminController;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.NONE;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import dao.BlogDAO;
import java.util.Date;

/**
 *
 * @author tranp
 */
public class UpdateBlogActionSupport extends ActionSupport {
    private int id;
    private String title;
    private String img;
    private String tag;
    private String content;
    private String msg;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
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
    public UpdateBlogActionSupport() {
    }
    
    public String UpdateBlog() throws Exception {
        BlogDAO dao = new BlogDAO();
        Date now = new Date();
        java.sql.Date date = new java.sql.Date(now.getTime());
        if (dao.updateBlog(id, title, content, date, img, tag)>0){
            return SUCCESS;
        }
        return "fail";

    }
    
}
