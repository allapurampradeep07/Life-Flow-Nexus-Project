package com.Pradeep.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get user inputs from the login form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if the user is already logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            // User is already logged in, display a pop-up message
            out.println("<html><head><script>alert('You are already logged in.');</script></head></html>");
            String existingUsername = (String) session.getAttribute("username");
            response.sendRedirect("welcome.jsp?username=" + existingUsername);
            return;
        }

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the MySQL database (replace with your database URL, username, and password)
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enterpriseprogramming", "root", "Pradeep@123");

            // Prepare an SQL statement to retrieve user data based on the provided username and password
            String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);

            // Execute the SQL statement
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // User is authenticated, create a session
                HttpSession newSession = request.getSession(true);
                newSession.setAttribute("username", username);
                String email = rs.getString("email");
                newSession.setAttribute("email", email);

                // Generate an OTP
                int otp = OTPGenerator.generateOTP();
                newSession.setAttribute("otp", otp); // Store the OTP in the session

                // Prepare OTP email
                String otpSubject = "OTP Verification";
                String otpText = "This is your OTP: " + otp;

                // Send OTP to the user's email
                SendMail.sendEmail(otpSubject, otpText, email);

                // Redirect to the OTP verification page along with the username
                response.sendRedirect("otp_verification.jsp?username=" + username);
            } else {
                out.println("Login failed. Please check your username, email, and password.");
            }

            // Close the database connection
            con.close();
        } catch (Exception e) {
            out.println("An error occurred: " + e);
        }
    }
}
