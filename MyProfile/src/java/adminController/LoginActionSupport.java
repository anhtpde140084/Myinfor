/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminController;

import com.opensymphony.xwork2.ActionSupport;
import dao.InforAccountDAO;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.InforAccount;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author tranp
 */
public class LoginActionSupport extends ActionSupport implements SessionAware {
    
   private String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    private String username;
    private String pass;


    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

   
        
    public LoginActionSupport() {
    }
    
    public String execute() throws Exception {
        InforAccount acc = null;
        HttpSession session = ServletActionContext.getRequest().getSession(true);
        InforAccountDAO adao = new InforAccountDAO();
        int result = adao.checkLogin(username, pass);
        if(result>0){
             acc = adao.GetAccout(username);
             sessionMap.put("USER", acc);
             return SUCCESS;
        } else {
            msg = "tên đăng nhập hoặc mật khẩu sai";
            return "input";
        }
    }
    private SessionMap<String, Object> sessionMap;
    
    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap<String, Object>) map;
    }

    public String logout() {
        InforAccount a = (InforAccount) sessionMap.get("USER");
        sessionMap.remove("USER");
        return "LOGOUT";
    }
    
}
