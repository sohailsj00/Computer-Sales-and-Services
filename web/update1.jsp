<%-- 
    Document   : update1
    Created on : 13 Oct, 2022, 10:32:31 PM
    Author     : Sohail
--%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
           String Pname=request.getParameter("n1");
        String CID=request.getParameter("n2");
        int id=Integer.parseInt(CID);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("update computer set pname='"+Pname+"' where CID="+id+"");
        if(result>0)
{
    out.println("one row updated");
}
else
{
    out.println("No record updated");
}
%>
    </body>
</html>
