<%-- 
    Document   : reading.jsp
    Created on : Oct 8, 2023, 11:58:03 AM
    Author     : saian
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<%
String dbName = request.getParameter("Db");

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/" + dbName;
String userId = "root";
String password = "Pradeep@123";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from the database in JSP</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5">

    <tr bgcolor="#A52A2A">
        <td><b>ID</b></td>
        <td><b>Task</b></td>
        <td><b>LastDate</b></td>
        <td><b>Delete</b></td>
    </tr>

    <%
    try {
        Class.forName(driverName);
        connection = DriverManager.getConnection(connectionUrl, userId, password);
        statement = connection.createStatement();

        String sql = "SELECT * FROM todo";
        resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
    %>
        <tr bgcolor="#DEB885">
            <td><%= resultSet.getInt("id") %></td>
            <td><%= resultSet.getString("task") %></td>
            <td><%= resultSet.getString("lastDate") %></td>
            <td>
                <a href="todolistdelete.jsp?id=<%= resultSet.getInt("id") %>&dbName=<%= dbName %>">
                    <input type="button" value="Delete">
                </a>
            </td>
        </tr>
    <%
        }
    } catch (Exception e) {
        out.println(dbName);
        e.printStackTrace();
    }
    %>
</table>

<center>
    <a href="todolist.jsp"><h1>Back</h1></a>
</center>
