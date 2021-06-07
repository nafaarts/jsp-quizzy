<%@page import="javax.print.attribute.standard.MediaSize.Other"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Pengulangan Dengan For</title>
  </head>
  <body>
    <% 
        for (int i =1; i <= 7; i++) 
            out.println("<font SIZE=" +i+ ">" +i+ "</font><BR />"); 
        out.println("OK!"); 
    %>
  </body>
</html>
