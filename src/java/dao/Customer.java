/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Admin
 */
public class Customer {
    private int cusid;
    private int accid;
    private String name;
    private String address;
    private String phone;
    private String email;

    public Customer() {
    }

    public Customer(int cusid, int accid, String name, String address, String phone, String email) {
        this.cusid = cusid;
        this.accid = accid;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }

    public int getCusid() {
        return cusid;
    }

    public void setCusid(int cusid) {
        this.cusid = cusid;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Customer{" + "cusid=" + cusid + ", accid=" + accid + ", name=" + name + ", address=" + address + ", phone=" + phone + ", email=" + email + '}';
    }
    
}
