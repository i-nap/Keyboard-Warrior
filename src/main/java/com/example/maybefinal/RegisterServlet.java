package com.example.maybefinal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Connection con = SqlConnector.getConnection();
        String username = request.getParameter("username").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();
        String passwordCon = request.getParameter("passwordCon").trim();
        if (con != null) {
            if (!isPasswordStrong(password)) {
                // Password does not meet the strength requirements
                response.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Password is not strong enough. Please use a stronger password.');");
                out.println("window.location.href='index.jsp';");
                out.println("</script>");
                return; // Exit the method
            }

            try {
                if (passwordCon.equals(password)) {
                    String hashedPassword = hashPassword(password);
                    PreparedStatement ps = con.prepareStatement("insert into user_data(username, email, password) values(?,?,?)");
                    ps.setString(1, username);
                    ps.setString(2, email);
                    ps.setString(3, hashedPassword);
                    int rowsAffected = ps.executeUpdate();

                    if (rowsAffected > 0) {
                        response.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Registration successful. Please login in to continue');");
                        out.println("window.location.href='index.jsp' ");
                        out.println("</script>");

                    } else {
                        response.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Registration Failed. Please try again!');");
                        out.println("window.location.href='index.jsp';");
                        out.println("</script>");
                    }

                } else {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Password and password confirmation do not match.');");
                    out.println("window.location.href='index.jsp';");
                    out.println("</script>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
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

    private boolean isPasswordStrong(String password) {
        // Implement your password strength requirements here
        // For example, you can check minimum length, presence of uppercase/lowercase letters, numbers, special characters, etc.

        // Example: Password should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit.
        return password.length() >= 8 && password.matches(".*[A-Z].*") && password.matches(".*[a-z].*") && password.matches(".*\\d.*");
    }

}