package com.example.maybefinal;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String submitButtonValue = request.getParameter("submitBtn");
        String deleteButtonValue = request.getParameter("deleteBtn");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con = SqlConnector.getConnection();

        // Get input parameters from the form
        HttpSession session = request.getSession();
// Retrieve the variable from the session
        String loggedInId = (String) session.getAttribute("loggedInId");
        String newUsername = request.getParameter("newUsername");
        String newPassword = request.getParameter("newPassword");
        String oldPassword = request.getParameter("oldPassword");
        String conPassword = request.getParameter("conPassword");
        if (submitButtonValue != null) {
            try {

                try {

                    if (conPassword.equals(newPassword)) {

                        String oldHashedPassword = hashPassword(oldPassword);

                        PreparedStatement ps = con.prepareStatement("SELECT * FROM user_data WHERE id=? AND password=?");
                        ps.setString(1, loggedInId);
                        ps.setString(2, oldHashedPassword);
                        // Execute the query
                        ResultSet rs = ps.executeQuery();
                        if (rs.next()) {

                            String newHashedPassword = hashPassword(newPassword);

                            String updateQuery = "UPDATE user_data SET username=?, password=? WHERE id=?";
                            PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
                            preparedStatement.setString(1, newUsername);
                            preparedStatement.setString(2, newHashedPassword);
                            preparedStatement.setString(3, loggedInId);

                            // Execute the update
                            int ds = preparedStatement.executeUpdate();

                            if (ds>0) {
                                // Profile updated successfully
                                // Update the value of a session attribute
                                session.setAttribute("loggedInUsername", newUsername);
                                out.println("<script type=\"text/javascript\">");
                                out.println("alert('Profile updated successfully');");
                                out.println("window.location.href='profile.jsp';");
                                out.println("</script>");
                            } else {
                                // Profile update failed
                                out.println("<script type=\"text/javascript\">");
                                out.println("alert('Failed to update profile');");
                                out.println("window.location.href='profile.jsp';");
                                out.println("</script>");
                            }
                        } else {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Incorrect old password');");
                            out.println("window.location.href='profile.jsp';");
                            out.println("</script>");
                        }
                    } else {
                        response.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Password and password confirmation do not match.');");
                        out.println("window.location.href='profile.jsp;");
                        out.println("</script>");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(e);
                }
            } catch (RuntimeException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private boolean isPasswordStrong(String password) {
        // Implement your password strength requirements here
        // For example, you can check minimum length, presence of uppercase/lowercase letters, numbers, special characters, etc.

        // Example: Password should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit.
        return password.length() >= 8 && password.matches(".*[A-Z].*") && password.matches(".*[a-z].*") && password.matches(".*\\d.*");
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