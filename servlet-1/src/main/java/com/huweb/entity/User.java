package com.huweb.entity;

public class User {
    private String username;
    private String password;
    private String mobile_number;
    private int num;

    public User(String username, String password, String mobile_number, int num) {
        this.username = username;
        this.password = password;
        this.mobile_number = mobile_number;
        this.num = num;
    }
    public User(){

    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getMobile_number() {
        return mobile_number;
    }

    public void setMobile_number(String mobile_number) {
        this.mobile_number = mobile_number;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
