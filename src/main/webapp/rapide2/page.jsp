<%-- 
    Document   : page
    Created on : 26 mai 2020, 14:45:56
    Author     : Xenol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String nul = request.getParameter("page");
            String test = "/WebApplication1/contenu/".concat(nul).concat("html"); %>
           <%@include file=${test} %>
    </body>
</html>
