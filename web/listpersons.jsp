<%-- 
    Document   : listpersons
    Created on : Apr 26, 2011, 4:47:50 PM
    Author     : tamasmichelberger
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <display:table name="names">
        </display:table>

        <table>
            <tr><th>Név</th></tr>
        <% for (int i=0; i<  ((List<String>)request.getAttribute("names")).size(); ++i) { %>
        <tr>
            <td><%=  (( List<String>)request.getAttribute("names")).get(i) %></td>
            <td><a href="<%=  (( List<String>)request.getAttribute("names")).get(i) %>">Kattints rám!</a></td>
        </tr>

        <% }%>
        </table>
    </body>
</html>
