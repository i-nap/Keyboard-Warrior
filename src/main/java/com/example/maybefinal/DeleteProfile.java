package com.example.maybefinal;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet("/DeleteProfile")
public class DeleteProfile extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Assuming you have these variables defined somewhere in your servlet
        Connection con = SqlConnector.getConnection();
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String loggedInId = (String) session.getAttribute("loggedInId");

        try {
            String confirm = request.getParameter("confirm");

            if (confirm != null && confirm.equals("confirm")) {
                PreparedStatement ds = con.prepareStatement("DELETE FROM user_data WHERE id=?");
                ds.setString(1, loggedInId);

                // Execute the query
                int rowsAffected = ds.executeUpdate();

                if (rowsAffected > 0) {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Account successfully deleted!');");
                    out.println("window.location.href='index.jsp';");
                    out.println("</script>");
                } else {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Failed to delete the account');");
                    out.println("window.location.href='profile.jsp';");
                    out.println("</script>");                }
            } else {
                out.println("Deletion cancelled");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            // Make sure to close resources like PreparedStatement and Connection
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Log or handle the exception appropriately
            }
        }
    }
}
