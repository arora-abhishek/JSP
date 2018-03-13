<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Q2</title>
</head>
<body>
<form name="form1" method="post" action="question2.jsp">
    Enter a number:
    <input type="text" name="textnumber">
    <input type="submit" value="submit">
</form>

<%
    if(request.getParameter("textnumber")!=null) {
        int n = Integer.parseInt(request.getParameter("textnumber"));
        for (int i = 1; i < n; i++)
            out.println(i);
    }
%>
</body>
</html>