/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tranp
 */
public class InforAccount {

   private int Id;
   private String name;
   private int Age;
   private String Country;
   private String City;
   private String email;
   private String Username;
   private String Password;
   private String Birthday;
    public InforAccount() {
    }

    @Override
    public String toString() {
        return "InforAccount{" + "Id=" + Id + ", name=" + name + ", Age=" + Age + ", Country=" + Country + ", City=" + City + ", email=" + email + ", Username=" + Username + ", Password=" + Password + ", Birthday=" + Birthday + '}';
    }

    public InforAccount(int Id, String name, int Age, String Country, String City, String email, String Birthday) {
        this.Id = Id;
        this.name = name;
        this.Age = Age;
        this.Country = Country;
        this.City = City;
        this.email = email;
        this.Username = Username;
        this.Password = Password;
        this.Birthday = Birthday;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getBirthday() {
        return Birthday;
    }

    public void setBirthday(String Birthday) {
        this.Birthday = Birthday;
    }

  
}
