package com.example.maybefinal;

import java.sql.*;

public class SqlConnector {
    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","inap");
            return con;

        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
