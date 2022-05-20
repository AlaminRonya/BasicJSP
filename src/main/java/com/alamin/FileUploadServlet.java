package com.alamin;

import com.alamin.databases.DBClass;
import com.alamin.databases.DBConnection;
import com.alamin.models.Employee;
import com.alamin.utils.Constants;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "FileUploadServlet", urlPatterns = "/FileUploadServlet")
@MultipartConfig
public class FileUploadServlet  extends HomeServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        final String name = req.getParameter("name");
        final String email = req.getParameter("email");
        final Part part = req.getPart("img");
        String fileName = part.getSubmittedFileName();
        String finalLocation = Constants.uploadImagePath + File.separator + fileName;
        part.write(finalLocation);
        init(new Employee(name, email, fileName));
        RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
        rd.include(req, resp);


       try {
           ResultSet rs = null;
           PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("SELECT * FROM tbl_sessions");
//        preparedStatement.setString();
           rs = preparedStatement.executeQuery();
           while (rs.next()){
               System.out.print(rs.getString("session_id")+"\t");
               System.out.print(rs.getString("session_name")+"\t");
               System.out.print(rs.getString("starting_date")+"\t");
               System.out.println(rs.getString("ending_date"));
           }

        } catch (SQLException e) {
            e.printStackTrace();
        }


//        out.println("Location--> "+finalLocation+"-->"+fileName);


    }
    private void init(Employee employee){

        DBClass.setEmployees(employee);
    }
}
