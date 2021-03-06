package com.alamin;

import com.alamin.models.Employee;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
//        Employee employee = new Employee(name, email);
        req.setAttribute("name", name);
        req.setAttribute("email", email);
        req.getRequestDispatcher("index.jsp").forward(req, resp);


//        resp.setContentType("text/html");
//        resp.getWriter().print("<h1>Hello ............</h1>");
//        req.getRequestDispatcher("/hello.jsp").include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
