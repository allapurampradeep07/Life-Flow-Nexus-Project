<%-- 
    Document   : delete.jsp
    Created on : Oct 8, 2023, 3:46:03 PM
    Author     : saian
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<% 
    String id = request.getParameter("id");
    String dbName = request.getParameter("dbName");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbName, "root", "Pradeep@123");
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM todo WHERE id=" + id);
        out.println("Data Deleted Successfully!");
        conn.close();
    } catch (Exception e) {
        out.print(e);
        e.printStackTrace();
    }
%>
<center>
    <a href="todolist.jsp">Back</a>
</center>
