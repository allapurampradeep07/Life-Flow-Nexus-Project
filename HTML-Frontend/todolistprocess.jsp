<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%
String Db = request.getParameter("Db");
String task = request.getParameter("task");
StringBuffer t = new StringBuffer(task);
String lastDate = request.getParameter("lastDate");

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + Db, "root", "Pradeep@123");
    Statement st = conn.createStatement();
    String query = "INSERT INTO todo (task, lastDate) VALUES (?, ?)";
    PreparedStatement pstmt = conn.prepareStatement(query);
    pstmt.setString(1, t.toString());
    pstmt.setString(2, lastDate);
    pstmt.executeUpdate();
    out.println("Data is successfully inserted!");
    conn.close();
} catch (Exception e) {
    out.println(Db);
    out.print(e);
    e.printStackTrace();
}
%>
<br>
<a href="todolist.jsp"><h1>Back</h1></a>
