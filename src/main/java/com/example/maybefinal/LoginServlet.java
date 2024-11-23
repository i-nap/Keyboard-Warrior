package com.example.maybefinal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;


@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            Connection con = SqlConnector.getConnection();
            String username = request.getParameter("username").trim();
            String password = request.getParameter("password").trim();

            if (con != null) {
                // Hash the entered password
                String hashedPassword = hashPassword(password);

                // Prepare the SQL statement
                PreparedStatement ps = con.prepareStatement("SELECT * FROM user_data WHERE (username=? OR email=?) AND password=?");
                ps.setString(1, username);
                ps.setString(2, username);
                ps.setString(3, hashedPassword);

                // Execute the query
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String loggedInUsername = rs.getString("username");
                    String loggedInEmail= rs.getString("email");
                    String loggedInId= rs.getString("id");
                    HttpSession session = request.getSession();
                    session.setAttribute("loggedInUsername", loggedInUsername);
                    session.setAttribute("loggedInEmail", loggedInEmail);
                    session.setAttribute("loggedInId", loggedInId);
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("window.location.href='main.jsp';");
                    out.println("</script>");
                } else {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login Failed');");
                    out.println("window.location.href='index.jsp';");
                    out.println("</script>");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(password.getBytes());
        byte[] hashedBytes = md.digest();

        // Convert hashed bytes to a hexadecimal string
        StringBuilder sb = new StringBuilder();
        for (byte b : hashedBytes) {
            sb.append(String.format("%02x", b));
        }

        return sb.toString();
    }
}