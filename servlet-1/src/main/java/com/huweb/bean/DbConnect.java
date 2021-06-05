package com.huweb.bean;

import java.sql.*;

public class DbConnect {
    private static String driverName = "com.mysql.jdbc.Driver";
    private static String userName = "root";
    private static String userPwd = "123456";
    private static String dbName = "book_manager";
    public static Connection getDBconnection(){
        String url1 = "jdbc:mysql://localhost:3306/"+dbName;
        String url2 = "?user="+userName+"&password="+userPwd;
        String url3 = "&useUnicode=true&characterEncoding=GB2312&serverTimezone=GMT%2B8";
        String url =url1+url2+url3;
            try {
                Class.forName(driverName);
                Connection con = DriverManager.getConnection(url);
                return con;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            return null;//
    }
    public static void closeDB(Connection con, PreparedStatement pstm, ResultSet rs){
        try {
            if (rs!=null) rs.close();
            if (pstm!=null) pstm.close();
            if (con!=null) con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
