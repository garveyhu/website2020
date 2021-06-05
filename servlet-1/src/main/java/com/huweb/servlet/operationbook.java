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
import java.io.PrintWriter;

@WebServlet(name = "operationbook",urlPatterns = "/operationbook")
public class operationbook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getParameter("uri");
        if (path.equals("/jsp/bookcrud/m_addbook.jsp")){
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
            if (S)dis = request.getRequestDispatcher("/jsp/success/opesuccess.jsp");
            else dis = request.getRequestDispatcher("/jsp/error.jsp");
            dis.forward(request,response);
        }
        else if (path.equals("/jsp/bookcrud/m_deletebook.jsp")){
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
            if (S)dis = request.getRequestDispatcher("/jsp/success/opesuccess.jsp");
            else dis = request.getRequestDispatcher("/jsp/error.jsp");
            dis.forward(request,response);
        }
        else if (path.equals("/jsp/bookcrud/m_changebook.jsp")){
            int id = Integer.parseInt(request.getParameter("id"));
            String bookname = request.getParameter("bookname");
            String author = request.getParameter("author");
            float price = Float.parseFloat(request.getParameter("price"));
            String remarks = request.getParameter("remarks");
            int sta = Integer.parseInt(request.getParameter("sta"));
            String oldname = request.getParameter("oldname");
            Book book = new Book(id,bookname,author,price,remarks,sta);
            book.setOldname("oldname");
            IBookDAO bookDAO = new BookDAO();
            RequestDispatcher dis = null;
            boolean S = false;
            try {
                S = bookDAO.m_changebook(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (S)dis = request.getRequestDispatcher("/jsp/success/opesuccess.jsp");
            else dis = request.getRequestDispatcher("/jsp/error.jsp");
            dis.forward(request,response);
        }
        else if (path.equals("/jsp/bookcrud/querybook.jsp")){
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
                dis = request.getRequestDispatcher("/jsp/error.jsp");
                dis.forward(request,response);}
            else {
                PrintWriter out = response.getWriter();
                out.println("id:"+book1.getId());
                out.println("bookname:"+book1.getBookname());
                out.println("author:"+book1.getAuthor());
                out.println("price:"+book1.getPrice());
                out.println("remarks:"+book1.getRemarks());
                out.println("sta:"+book1.getSta());
            }
        }
        else if (path.equals("/jsp/bookcrud/borrowbook.jsp")){
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
            if (S)dis = request.getRequestDispatcher("/jsp/success/opesuccess.jsp");
            else dis = request.getRequestDispatcher("/jsp/error.jsp");
            dis.forward(request,response);
        }
        else if (path.equals("/jsp/bookcrud/returnbook.jsp")){
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
            if (S)dis = request.getRequestDispatcher("/jsp/success/opesuccess.jsp");
            else dis = request.getRequestDispatcher("/jsp/error.jsp");
            dis.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
