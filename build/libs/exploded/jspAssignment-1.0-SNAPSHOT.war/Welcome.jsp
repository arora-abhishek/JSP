<%--
  Created by IntelliJ IDEA.
  User: abhishek
  Date: 12/3/18
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>

<%
    response.setHeader ( "Cache-Control","no-cache,no-store,must-revalidate" );
    if ( session.getAttribute("username")==null  )
    {
        response.sendRedirect("index.html");
    }
%>
welcome <%= session.getAttribute("username")%>
<br>
<form method="get" action="SignOut">
    <input type="submit" value="SignOut">
</form>

</body>
</html>
