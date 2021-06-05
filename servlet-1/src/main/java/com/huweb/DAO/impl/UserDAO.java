package com.huweb.DAO.impl;

import com.huweb.DAO.IUserDAO;
import com.huweb.bean.DbConnect;
import com.huweb.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO implements IUserDAO {
    protected static final String FIELDS_INSERT = "username,password,mobile_number,num";
    private static String INSERT_SQL = "insert into user_info("+FIELDS_INSERT+")"+"values(?,?,?,?)";
    private static String SELECT_SQL = "select " +FIELDS_INSERT+" from user_info where username=?and password=?";
    private static String DELETE_SQL = "delete from user_info where username=?";
    @Override
    public boolean deleteuser(User user) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(DELETE_SQL);
        prepStmt.setString(1,user.getUsername());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public boolean registeruser(User user) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(INSERT_SQL);
        prepStmt.setString(1,user.getUsername());
        prepStmt.setString(2,user.getPassword());
        prepStmt.setString(3,user.getMobile_number());
        prepStmt.setInt(4,8);
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public User getuser(User user) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        User user2 = new User(null,null,null,0);
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(SELECT_SQL);
        prepStmt.setString(1,user.getUsername());
        prepStmt.setString(2,user.getPassword());
        rs = prepStmt.executeQuery();
        if (rs.next()){
            user2.setUsername(rs.getString(1));
            user2.setPassword(rs.getString(2));
            user2.setMobile_number(rs.getString(3));
            user2.setNum(rs.getInt(4));
        }return user2;//查到的用户对象，判断是否为空，是否是管理员；
    }
}
