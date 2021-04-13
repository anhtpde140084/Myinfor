/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.InforAccountDAO;
import model.InforAccount;

/**
 *
 * @author tranp
 */
public class AccountActionSupport extends ActionSupport {
    
    private InforAccount acc;

    public InforAccount getAcc() {
        return acc;
    }

    public void setAcc(InforAccount acc) {
        this.acc = acc;
    }
    
    
    public AccountActionSupport() {
    }
    
    public String execute() throws Exception {
        InforAccountDAO dao = new InforAccountDAO();
          try {
            acc = dao.GetInfor();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return SUCCESS;
    }
    
}
