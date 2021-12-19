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
public class Comment {

    private int id;
    private int pid;
    private int accid;
    private String comment;
    private String user;

    public Comment() {
    }

    public Comment(int id, int accid, int pid, String comment) {
        this.id = id;
        this.pid = pid;
        this.accid = accid;
        this.comment = comment;
    }

    public Comment(int id, int pid, String comment, String user) {
        this.id = id;
        this.pid = pid;
        this.comment = comment;
        this.user = user;
    }

    public Comment(int id, int pid, int accid, String comment, String user) {
        this.id = id;
        this.pid = pid;
        this.accid = accid;
        this.comment = comment;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Comment{" + "id=" + id + ", pid=" + pid + ", accid=" + accid + ", comment=" + comment + ", user=" + user + '}';
    }

}
