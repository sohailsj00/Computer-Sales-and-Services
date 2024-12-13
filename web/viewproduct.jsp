<%-- 
    Document   : viewproduct
    Created on : 13 Oct, 2022, 11:02:03 PM
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
        <% String pname=request.getParameter("n1");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from computer where PNAME='"+pname+"'");
     
        %>
   
      <table border=2 align="center">
         <tr>
             <th>CID</th>
             <th>Pname</th>
             <th>Qty</th>
             <th>Price</th>
             <th>Supplier</th>
             <th>Supmob</th>
             <th>Address</th>
             <th>Company</th>
         </tr>
         <%
             while(rs.next())
             {
                 
             %>
         <tr>
             <td><%=rs.getInt(1)%></td>
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getInt(3)%></td>
             <td><%=rs.getInt(4)%></td>
             <td><%=rs.getString(5)%></td>
             <td><%=rs.getInt(6)%></td>
             <td><%=rs.getString(7)%></td>
             <td><%=rs.getString(8)%></td>
         </tr>
         <%
             }
         %>
         
     </table>
         
    </body>
</html>
