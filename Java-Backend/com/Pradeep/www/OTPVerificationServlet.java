package com.Pradeep.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OTPVerificationServlet")
public class OTPVerificationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user-entered OTP
        String enteredOTP = request.getParameter("otp");

        // Get the stored OTP and username from the session
        HttpSession session = request.getSession();
        Integer storedOTP = (Integer) session.getAttribute("otp");
        String username = (String) session.getAttribute("username");

        // Check if the entered OTP matches the stored OTP
        if (enteredOTP != null && storedOTP != null && enteredOTP.equals(String.valueOf(storedOTP))) {
            // Redirect to welcome page along with the username
            response.sendRedirect("welcome.jsp?username=" + username);
        } else {
            // Display an error message and redirect back to OTP verification
        	PrintWriter out = response.getWriter();
            out.println("<html><head><script>alert('Enter a valid OTP.');</script></head></html>");
            response.sendRedirect("otp_verification.jsp");
            
        }
    }
}
