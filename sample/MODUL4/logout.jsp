<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <% session.invalidate() ; %>
    <p>
      INFORMASI ANDA PADA SESSION TELAH TIDAK ADA Sehingga ANda tidak dapat
      mengakses kembali
      <a href="FormLogin.jsp"> link Form Login.jsp </a>
    </p>
  </body>
</html>
