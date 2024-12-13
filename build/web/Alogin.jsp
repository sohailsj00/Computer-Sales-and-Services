<%-- 
    Document   : Alogin
    Created on : 13 Oct, 2022, 6:39:35 PM
    Author     : Sohail
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
            String username=request.getParameter("n1");
        String pass=request.getParameter("n2");
        
            if(username.equals("Sohail")&& pass.equals("Sohail@456"))
            {
                response.sendRedirect("success.jsp");
            }
            else
            {
                out.println("Please enter given user name and password");
                response.sendRedirect("alogin.html");
                
            }
        %>
    </body>
</html>
