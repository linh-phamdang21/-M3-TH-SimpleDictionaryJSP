<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: phdan
  Date: 14/05/2020
  Time: 09:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chao");
    dic.put("apple", "Qua tao");
    dic.put("computer", "May tinh");
    dic.put("pencil", "But chi");

    String search = request.getParameter("txtSearch");

    String resule = dic.get(search);

    if (resule != null){
        out.println("Word: " + search + "\n");
        out.println("Resule: " + resule);
    } else {
        out.println("Word not found");
    }
%>
</body>
</html>
