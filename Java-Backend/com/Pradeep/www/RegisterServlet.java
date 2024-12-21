package com.Pradeep.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get user inputs from the registration form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String reenterPassword = request.getParameter("reenterPassword");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");

        // Check if the password and reenterPassword match
        if (!password.equals(reenterPassword)) {
            // Display a pop-up message using JavaScript
            out.println("<html><head><script>alert('Passwords do not match. Please try again.');window.location.href='register.jsp';</script></head></html>");
            return;
        }

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the MySQL database (replace with your database URL, username, and password)
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enterpriseprogramming", "root", "Pradeep@123");

            // Prepare an SQL statement to insert user data into the database
            String query = "INSERT INTO users (username, password, email, phone_number) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phoneNumber);

            // Execute the SQL statement to insert the user data
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                // Redirect to the existing welcome.jsp page
                response.sendRedirect("welcome.jsp?username=" + username);
            } else {
                out.println("Registration failed. Please try again.");
            }

            // Close the database connection
            con.close();
        } catch (Exception e) {
            out.println("An error occurred: " + e);
        }
    }
}

