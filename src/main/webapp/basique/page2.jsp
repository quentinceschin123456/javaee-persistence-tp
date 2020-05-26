<%-- 
    Document   : page1
    Created on : 18 mai 2020, 16:49:21
    Author     : AdminEtu
--%>

<%@page import="EnglishLessons.reminder"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="EnglishLessons.reminderLocal"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<%
    String newText, currentText = "";
    try {
        newText = request.getParameter("text");
        System.out.println("new text: " + newText);
        reminderLocal l = (reminderLocal) request.getSession().getAttribute("reminderText");
        if (l==null) {
        InitialContext ctx = new InitialContext();
        l = (reminderLocal) ctx.lookup("java:global/EnglishLessons/reminder!EnglishLessons.reminderLocal");
        request.getSession().setAttribute("reminderText", l);
        }
        if (newText != null) {
            l.editText(newText);
        }
        currentText = l.getReminderText();
    }catch (Exception e){
        e.printStackTrace();
    }
 %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Page 2</h1>
        <p>blablablablabla</p>    
        <p>bla</p>
        <p>blabla</p>
    </br>       
        <a href="/EnglishLessons/basique/page1.jsp">Voir La Page 1</a>
        <a href="/EnglishLessons/basique/page3.jsp">Voir La Page 3</a>
        <a href="/EnglishLessons/index.html">Retour à l'index</a>

    </br>
    <form name="ReminderForm" action="" method="POST">
        <input type="text" name="text" value="<%=currentText%>"/> 
    <input type="submit" value="Register" name="Register" />
   </form> 
    </body>
</html>
