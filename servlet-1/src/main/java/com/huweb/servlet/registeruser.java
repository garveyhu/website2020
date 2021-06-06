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
import java.io.PrintWriter;

@WebServlet(name = "registeruser",urlPatterns = "/registeruser")
public class registeruser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String mobile_number = request.getParameter("mobile_number");
        int num = 8;
        User user = new User(username,password,mobile_number,num);
        IUserDAO userDAO = new UserDAO();
        RequestDispatcher dis = null;
        boolean S = false;
        try {
            S = userDAO.registeruser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (S){
            String info = "点击返回登录哦！";
            response.getWriter().print(info);
        }
        else {
            String info = "error";
            response.getWriter().print(info);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
