<%-- 
    Document   : add
    Created on : 13 Oct, 2022, 8:33:03 PM
    Author     : Sohail
--%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String pname=request.getParameter("n1");
            String Qty=request.getParameter("n2");
            int q=Integer.parseInt(Qty);
            String price=request.getParameter("n3");
            int pr=Integer.parseInt(price);
            String sname=request.getParameter("n4");
            String supmob=request.getParameter("n5");
            int m=Integer.parseInt(supmob);
            String address=request.getParameter("n6");
            String company=request.getParameter("n7");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            int resultrs=stmt.executeUpdate("insert into computer values(CID.nextval,'"+pname+"',"+q+","+pr+",'"+sname+"',"+m+",'"+address+"','"+company+"')");
            if(resultrs>0)
            {
                out.print("One record Added");
            }
            else
            {
                out.print("Please try again");
            }
        %>
    </body>
</html>
