<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Sorting</title>
  </head>
  <body>
    <%@page import="java.util.Arrays" %> 
    <% 
        String nama[] = {"Fira","Nurul","Rauzana","Intan","Joko","Aulia"}; 
        out.println("<u><b>Nama-nama sebelum diurutkan</b></u><br />"); 
        for(int i = 0; i < nama.length; i++) 
            out.println(nama[i]+"<br />");
        Arrays.sort(nama); //untuk pengurutan (sorting) 
        out.println("<hr /><u><b><br />Nama-nama setelah diurutkan</b></u><br />");
        for(int i=0;i<nama.length;i++) 
            out.println(nama[i]+"<br>");
    %>
    </body>
</html>