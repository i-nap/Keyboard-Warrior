package com.example.maybefinal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

@WebServlet(name = "WpmData", value = "/WpmData")
public class WpmData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            Connection con = SqlConnector.getConnection();
            String modeNumber = request.getParameter("modeNumber");
            String wpmValue = request.getParameter("wpmValue");
            if (con != null) {

                // Get the current session
                HttpSession session = request.getSession();

// Retrieve the variable from the session
                String loggedInId = (String) session.getAttribute("loggedInId");

                // Prepare the SQL statement
                PreparedStatement ps = con.prepareStatement("insert into wpm_data(wpm_value, user_id, mode_id) values(?,?,?)");
                ps.setString(1, wpmValue);
                ps.setString(2, loggedInId);
                ps.setString(3, modeNumber);

                // Execute the query
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Done');");
                    out.println("</script>");
                } else {
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Failed');");
                    out.println("</script>");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}