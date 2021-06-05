package com.huweb.entity;
public class Book {
    private int id;
    private String bookname;
    private String author;
    private float price;
    private String remarks;
    private int sta;
    private String oldname;//管理员修改书籍使用该变量；

    public Book(int id, String bookname, String author, float price, String remarks, int sta) {
        this.id = id;
        this.bookname = bookname;
        this.author = author;
        this.price = price;
        this.remarks = remarks;
        this.sta = sta;
    }
    public Book(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getSta() {
        return sta;
    }

    public void setSta(int sta) {
        this.sta = sta;
    }

    public String getOldname() {
        return oldname;
    }

    public void setOldname(String oldname) {
        this.oldname = oldname;
    }
}
