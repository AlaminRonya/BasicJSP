package com.alamin.databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection  {

    private static Connection connection = null;

    private DBConnection(){

    }

    public static Connection getConnection(){
        if (connection == null){
            try {
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection(
                        "jdbc:postgresql://localhost:5432/student_management",
                        "postgres",
                        "asdf"
                );
            }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

}
