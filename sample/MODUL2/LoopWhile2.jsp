<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Latihan Loop While2</title>
  </head>
  <body>
    <% 
        String kalimat = "abcabcabcabc"; 
        out.println("Kalimat = " + kalimat+"<br />");
        int i=0 ; 
        out.println("jumlah kalimat = " + kalimat.length()+"<br />");
        while(i < kalimat.length()) { 
            i = kalimat.indexOf("b",i); 
            if (i != -1) {
                out.println("<br />Huruf b ada di index = " + i);
                i++; 
            } else 
                break; 
        } 
    %>
  </body>
</html>
