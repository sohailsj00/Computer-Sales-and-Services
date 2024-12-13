<%-- 
    Document   : success
    Created on : 13 Oct, 2022, 6:54:36 PM
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
        <style>
            .content{background-image: linear-gradient(green, lightcoral, blue);
          padding:10px;
		  height:550px;}
            
      button {
        display: inline-block;
        background-color: windowframe;
        border-radius: 10px;
        border: 3px double;
        color: yellow;
        text-align: center;
        font-size: 10px;
        padding: 10px;
        width: 80px;
        cursor: pointer;
        margin: 5px;
      }
        </style>
       
                  <div class="content" >
                 
                      <a href="add.html"><button type="button">Add product</button></a>
                          <a href="update.html"><button type="button">Update </button></a>
                          <a href="delete.html"><button type="button">Delete</button></a>
                          <a href="view.html"><button type="button">View </button></a>
                          <a href="viewall.jsp"><button type="button">Viewall</button></a>


</div>
    </body>
</html>
