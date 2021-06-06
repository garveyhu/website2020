package com.huweb.servlet;

import com.huweb.DAO.IBookDAO;
import com.huweb.DAO.impl.BookDAO;
import com.huweb.entity.Book;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "operationbook",urlPatterns = "/operationbook")
public class operationbook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String origin = request.getParameter("origin");
        if (origin.equals("append_book")){
            int id = Integer.parseInt(request.getParameter("id"));
            String bookname = request.getParameter("bookname");
            String author = request.getParameter("author");
            float price = Float.parseFloat(request.getParameter("price"));
            String remarks = request.getParameter("remarks");
            int sta = Integer.parseInt(request.getParameter("sta"));
            Book book = new Book(id,bookname,author,price,remarks,sta);
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.m_addbook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S) {
                String info = "书籍已加入！";
                response.getWriter().print(info);
            }
            else {
                String info = "书籍添加失败！";
                response.getWriter().print(info);
            }
        }
        else if (origin.equals("delete_book")){
            String bookname = request.getParameter("bookname");
            Book book = new Book();
            book.setBookname(bookname);
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.m_deletebook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S) {
                String info = "书籍已被你删除！";
                response.getWriter().print(info);
            }
            else {
                String info = "没有这本书，删除失败！";
                response.getWriter().print(info);
            }
        }
        else if (origin.equals("modify_book")){
            int id = Integer.parseInt(request.getParameter("id"));
            String bookname = request.getParameter("bookname");
            String author = request.getParameter("author");
            float price = Float.parseFloat(request.getParameter("price"));
            String remarks = request.getParameter("remarks");
            int sta = Integer.parseInt(request.getParameter("sta"));
            String oldname = request.getParameter("oldname");
            Book book = new Book(id,bookname,author,price,remarks,sta);
            book.setOldname(oldname);
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.m_changebook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S) {
                String info = "书籍修改成功！";
                response.getWriter().print(info);
            }
            else {
                String info = "书籍修改失败！";
                response.getWriter().print(info);
            }
        }
        else if (origin.equals("inquire")){
            String bookname = request.getParameter("bookname");
            Book book = new Book();
            book.setBookname(bookname);
            IBookDAO bookDAO = new BookDAO();
            Book book1 = new Book();
            RequestDispatcher dis = null;
            try {
                book1 = bookDAO.querybook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (book1==null){
                response.getWriter().print("empty");}
            else {
                String info = "书名："+book1.getBookname()+"  书号："+book1.getId()+"  作者："+book1.getAuthor()+"  价格："+book1.getPrice()+"  简介："+ book1.getRemarks()+"  剩余数量："+book1.getSta();
                response.getWriter().print(info);
            }
        }
        else if (origin.equals("borrow")){
            String bookname = request.getParameter("bookname");
            Book book = new Book();
            book.setBookname(bookname);
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.borrowbook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S) {
                String info = "书籍已被你借出，请好好保管哦！";
                response.getWriter().print(info);
            }
            else {
                String info = "没有这本书了呢，再看看其他书吧！";
                response.getWriter().print(info);
            }
        }
        else if (origin.equals("return")) {
            String bookname = request.getParameter("bookname");
            Book book = new Book();
            book.setBookname(bookname);
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.returnbook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S) {
                String info = "书籍已经归还，感谢你的阅读！";
                response.getWriter().print(info);
            } else {
                String info = "还书失败！";
                response.getWriter().print(info);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
