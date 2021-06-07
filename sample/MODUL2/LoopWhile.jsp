<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Pengulangan While</title>
  </head>
  <body>
    <% 
        int max = 0; 
        int min = 1000; 
        int jumlah = 10; 
        out.println("Jumlah Bilangan Yang Dibangkitkan = " + jumlah+"<br />"); 
        int i = 0; 
        while(i < jumlah) { 
            int acak = (int) (Math.random() * 100); 
            max = Math.max(max, acak); 
            min = Math.min(min, acak); 
            out.println("nilai acak " +i+ " : " +acak+ "<br />");
            i++; 
        } 
        out.println("Maksimum = "+max); 
        out.println("<br />Minimum = "+min);
    %>
  </body>
</html>
