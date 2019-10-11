<%--
  Created by IntelliJ IDEA.
  User: 19tha
  Date: 10/11/2019
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translate</title>
</head>
<body>
<%!
    Map<String,String> dic=new HashMap<>();
%>

<%
    dic.put("hello","Xin Chao");
    dic.put("how","the nao");
    dic.put("book","quyen vo");

    String search=request.getParameter("english");

    String result=dic.get(search);
    if(result !=null){
        out.println("Word: "+search);
        out.println("Result: "+result);
    } else {
        out.println("Not found");
    }

%>
</body>
</html>
