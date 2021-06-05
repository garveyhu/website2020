package com.huweb.servlet;

import com.huweb.DAO.IUserDAO;
import com.huweb.DAO.impl.UserDAO;
import com.huweb.entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "getUserDomain",urlPatterns = "/getUserDomain")
public class getUserDomain extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        IUserDAO userDAO = new UserDAO();
        User user1 =new User();
        RequestDispatcher dis = null;
        try {
            user1 = userDAO.getuser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (user1==null)dis = request.getRequestDispatcher("/jsp/error.jsp");
        else if (user1.getUsername().equals("root"))dis = request.getRequestDispatcher("/jsp/manager.jsp");
        else dis = request.getRequestDispatcher("/jsp/main.jsp");
        dis.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
