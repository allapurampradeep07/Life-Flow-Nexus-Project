<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String websiteURL = request.getParameter("websiteURL");
    String user = request.getParameter("user");
    String password = request.getParameter("password");

    Connection conn = null;
   Statement stmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost:3306/passwordsave";
        String dbUser = "root";
        String dbPassword = "Pradeep@123";
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

//        String sql = "INSERT INTO ds (websiteURL, user, password) VALUES (?, ?, ?)";
        stmt = conn.createStatement();
//        stmt.setString(1, websiteURL);
//        stmt.setString(2, user);
//        stmt.setString(3, password);
        
        stmt.executeUpdate("insert into ds (websiteURL, user, password) values ('"+websiteURL+"', '"+user+"', '"+password+"')");
        out.println("<script type='text/javascript'>");
        out.println("window.location.replace('passwordSave.jsp');");
        out.println("alert('Password inserted successfully!');");
        out.println("</script>");        

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
         }
%>