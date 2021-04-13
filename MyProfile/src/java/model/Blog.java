/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author tranp
 */
public class Blog {

  private int Id;
  private String title;
  private String content;
  private String img;
  private Date Create_date;
  private int view;
  private String tag;
    public Blog() {
    }

    public Blog(String title, String content, String img, Date Create_date, String tag) {
        this.title = title;
        this.content = content;
        this.img = img;
        this.Create_date = Create_date;
        this.tag = tag;
    }

    public Blog(int Id, String title, String content, String img, Date Create_date, String tag, int view) {
        this.Id = Id;
        this.title = title;
        this.content = content;
        this.img = img;
        this.Create_date = Create_date;
        this.view = view;
        this.tag = tag;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getCreate_date() {
        return Create_date;
    }

    public void setCreate_date(Date Create_date) {
        this.Create_date = Create_date;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public void setDate(java.sql.Date date) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
  
    
}
