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

@WebServlet(name = "m_deleteuser",urlPatterns = "/m_deleteuser")
public class m_deleteuser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        User user = new User();
        user.setUsername(username);
        IUserDAO userDAO = new UserDAO();
        RequestDispatcher dis = null;
        boolean S = false;
        try {
            S = userDAO.deleteuser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (S) {
            String info = "用户已被你删除！";
            response.getWriter().print(info);
        }
        else {
            String info = "没有该用户，删除失败！";
            response.getWriter().print(info);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
