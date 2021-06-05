package com.huweb.DAO.impl;

import com.huweb.DAO.IBookDAO;
import com.huweb.bean.DbConnect;
import com.huweb.entity.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookDAO implements IBookDAO {
    protected static final String FIELDS_INSERT = "id,bookname,author,price,remarks,sta";
    private static String INSERT_SQL = "insert into book_info("+FIELDS_INSERT+")"+"values(?,?,?,?,?,?)";
    private static String SELECT_SQL = "select " +FIELDS_INSERT+" from book_info where bookname=?";
    private static String DELETE_SQL = "delete from book_info where bookname=?";
    private static String UPDATE_SQL = "update book_info set id=?,bookname=?,author=?,price=?,remarks=?,sta=? where bookname=?";
    private static String BORROW_SQL = "update book_info set sta=? where bookname=?";
    private static String RETURN_SQL = "update book_info set sta=? where bookname=?";
    @Override
    public boolean m_addbook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(INSERT_SQL);
        prepStmt.setInt(1,book.getId());
        prepStmt.setString(2,book.getBookname());
        prepStmt.setString(3,book.getAuthor());
        prepStmt.setFloat(4,book.getPrice());
        prepStmt.setString(5,book.getRemarks());
        prepStmt.setInt(6,book.getSta());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public boolean m_deletebook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(DELETE_SQL);
        prepStmt.setString(1,book.getBookname());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public boolean m_changebook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(UPDATE_SQL);
        prepStmt.setInt(1,book.getId());
        prepStmt.setString(2,book.getBookname());
        prepStmt.setString(3,book.getAuthor());
        prepStmt.setFloat(4,book.getPrice());
        prepStmt.setString(5,book.getRemarks());
        prepStmt.setInt(6,book.getSta());
        prepStmt.setString(7, book.getOldname());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public boolean borrowbook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(BORROW_SQL);
        prepStmt.setInt(1,0);
        prepStmt.setString(2,book.getBookname());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public boolean returnbook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(RETURN_SQL);
        prepStmt.setInt(1,1);
        prepStmt.setString(2,book.getBookname());
        int B = prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        if (B==0)return false;
        else return true;
    }

    @Override
    public Book querybook(Book book) throws Exception {
        Connection con =null;
        PreparedStatement prepStmt = null;
        ResultSet rs = null;
        Book book1 = new Book(0,null,null,0,null,0);
        con = DbConnect.getDBconnection();
        prepStmt = con.prepareStatement(SELECT_SQL);
        prepStmt.setString(1,book.getBookname());
        rs = prepStmt.executeQuery();
        if (rs.next()){
            book1.setId(rs.getInt(1));
            book1.setBookname(rs.getString(2));
            book1.setAuthor(rs.getString(3));
            book1.setPrice(rs.getFloat(4));
            book1.setRemarks(rs.getString(5));
            book1.setSta(rs.getInt(6));
        }return book1;//查到的书籍对象，判断是否被借；
    }
}
