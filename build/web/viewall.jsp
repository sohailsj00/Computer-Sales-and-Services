<%-- 
    Document   : viewall
    Created on : 15 Oct, 2022, 10:14:53 AM
    Author     : Sohail
--%>

<%@page import="java.sql.ResultSet"%>
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
<%
        Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from computer");

    while(rs.next())
    {
        
       out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getInt(6)+" "+rs.getString(7)+" "+rs.getString(8));
    }
    %>
    </body>
</html>
