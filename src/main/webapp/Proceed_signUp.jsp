<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: abhishek
  Date: 13/3/18
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        out.print("Trying to insert the values");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        out.print(username + " " + pwd + "  " );
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspuser" , "root" , "ttn");
        PreparedStatement stmt = connection.prepareStatement(" insert into user (username,password) values(?,?);");
        stmt.setString(1 , username);
        stmt.setString(2 , pwd);
        stmt.executeUpdate();
        connection.close();

        RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
        rs.include(request, response);
    }
    catch (SQLException e) {
        e.printStackTrace();
    }
    catch (ClassNotFoundException e) {
        System.out.println("Class not found Exception");
        e.printStackTrace();
    }
%>


</body>
</html>
