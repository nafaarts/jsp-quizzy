<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie cNama1 = new Cookie("nama1","AndiniSuryati"); 
            Cookie cKampus1 = new Cookie("kampus1","PoliteknikAceh"); 
            Cookie cNama2 = new Cookie("nama2","SitiAzizah");
            Cookie cKampus2 = new Cookie("kampus2","Unsyiah");
            Cookie cKota = new Cookie("kota","BandaAceh");

            response.addCookie(cNama1);
            response.addCookie(cKampus1); 
            response.addCookie(cNama2); 
            response.addCookie(cKampus2); 
            response.addCookie(cKota);
            
            out.println("Lima buah Cookie telah dibuat"); 
        %>
    </body>
</html>