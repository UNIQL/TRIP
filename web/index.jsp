<%-- 
    Document   : index
    Created on : Apr 26, 2011, 12:26:21 AM
    Author     : andrewfabian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <style type="text/css">
h1
{
text-transform: uppercase;
color: #A7C942;
}
p
{
text-indent: 50px;
letter-spacing:1px;
color: #A7C942;
}
a
{
text-decoration:none;
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1 style="position: relative; top: 12px; left: 1042px;"">Log on</h1>


        <form method="POST" action="index.jsp" name="logon">
   
            <table border="0" cellpadding="0" cellspacing=0" width="200" align="right" id="logontable">
        <tr>
            <td width="50%">Username:</td>
            <td width="50%"> <input type="text" name="username"></td>
        </tr>
        <tr>
            <td width="50%">Password:</td>
            <td width="50%"><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>
                <br>
            </td>
            
        </tr>
        <tr>
            <td width="50%" colspan="2" align="center">
                <input type="submit" value="Go!" name="submit">
            </td>
        </tr>
        <tr>
            <td>
                <br>
            </td>
        </tr>
        <tr>
            <td width="50%" colspan="2" align="center">
                <a href="/TRIP/forgotPwd.jsp">Forgot your pwd?</a>
            </td>
        </tr>
        <tr>
            <td>
                <br>
            </td>
        </tr>
        <tr>
            <td>
                <br>
            </td>
        </tr>
        <tr>
            <td width="50%" colspan="2" align="center">
                <h3 align="center">Not a member yet?</h3>
                
            </td>
        </tr>
        <tr>
            <td width="50%" colspan="2" align="center">
                <input type="button" value="Join now!" name="regButton" style="background-color:#A7C942" onclick="window.location='/TRIP/registration.jsp'">
            </td>
        </tr>
        <tr>
            <td>
                <br>
            </td>
        </tr>
        <tr>
            <td width="50%" colspan="2" align="center">
                <a href="/TRIP/faq.jsp">What's this?</a>
            </td>
        </tr>

        </table>

            
        </form>


    </body>


</html>
