/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.SendEmail;

/**
 *
 * @author tranp
 */
public class SendMailActionSupport extends ActionSupport {
    
    private String name;
    private String email;
    private String subject;
    private String message;
    private String exeption;

    public String getExeption() {
        return exeption;
    }

    public void setExeption(String exeption) {
        this.exeption = exeption;
    }
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
    public SendMailActionSupport() {
    }
    
    public String execute() throws Exception {
       SendEmail s = new SendEmail();
       String allMessage = "Có 1 email: " + email + " Tiêu đề: " + subject + "\n" +"Tên người gửi: " + name + "\n nội dung: " +message ;
        try {
            s.sendContact(email, "Chúng tôi sẽ trả lời bạn sớm nhất có thể!");
            s.sendContact("conacmong5@gmail.com", allMessage);
            exeption = "Thank for your contact!";
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            exeption = "Unsuccessful!";
        }
        return "fail";
    }
    
}
