<%-- 
    Document   : delete
    Created on : 13 Oct, 2022, 10:59:11 PM
    Author     : Sohail
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String CID=request.getParameter("n1");
        int id=Integer.parseInt(CID);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("delete from computer where CID="+id+"");
        if(rs>0)
{
    out.print("one row deleted");
}
else
{
    out.print("No row deleted");
}
        %>
    </body>
</html>
