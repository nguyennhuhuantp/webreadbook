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
public class Chapter {
    private int id;
    private int productId;
    private String productName;
    private int chapter_number;
    private String chapterName;
    private String content;

    public Chapter() {
    }

    public Chapter(int id, int productId, String productName, int chapter_number, String chapterName, String content) {
        this.id = id;
        this.productId = productId;
        this.productName = productName;
        this.chapter_number = chapter_number;
        this.chapterName = chapterName;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getChapter_number() {
        return chapter_number;
    }

    public void setChapter_number(int chapter_number) {
        this.chapter_number = chapter_number;
    }

    public String getChapterName() {
        return chapterName;
    }

    public void setChapterName(String chapterName) {
        this.chapterName = chapterName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Chapter{" + "id=" + id + ", productId=" + productId + ", productName=" + productName + ", chapter_number=" + chapter_number + ", chapterName=" + chapterName + ", content=" + content + '}';
    }

        
}
