<%-- 
    Document   : registration
    Created on : Apr 26, 2011, 12:27:46 AM
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
#regtitle
{
 position:relative;
 top:20px;
 left:40px;
}
#regtable
{
 position:relative;
 top:25px;
 left:40px;
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1 id="regtitle">Registration:</h1>

        <form action="registrationServlet" method="post" >

            <table id="regtable" border ="0">
               <tr>
                   <td>Felhasználónév:</td>
                   <td><input type="text" name="username" /></td>
               </tr>
               <tr>
                   <td>Jelszó:</td>
                   <td><input type="password" name="password" /></td>
               </tr>
               <tr>
                   <td>Név:</td>
                   <td><input type="text" name="name" /></td>
               </tr>
               <tr>
                   <td>E-mail:</td>
                   <td><input type="text" name="email" /></td>
               </tr>
               <tr>
               <td><br></td>
               </tr>
               <tr>
                   <td align="center"><input type="submit" name="regbutton" value="menjen!"></td>
               </tr>

           </table>
            <p>${requestScope["success"]}</p>
            <p>Affected rows: ${requestScope["affectedrows"]}</p>
            <p>Error: ${requestScope["error"]}</p>

            <p>Username: ${requestScope["uname"]}</p>
            <p>Pwd: ${requestScope["pwd"]}</p>
            <p>Name: ${requestScope["name"]}</p>
            <p>Email: ${requestScope["mail"]}</p>
        </form>

    </body>
</html>
