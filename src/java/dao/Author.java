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
public class Author {

    private int id;
    private String authorname;
    private String description;

    public Author() {
    }

    public Author(String authorname, String description) {
        this.authorname = authorname;
        this.description = description;
    }

    public Author(int id, String authorname, String description) {
        this.id = id;
        this.authorname = authorname;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Author{" + "id=" + id + ", authorname=" + authorname + ", description=" + description + '}';
    }
}
