<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hasil Segitiga</title>
  </head>
  <body>
    <center>
      <h3>Hasil Segitiga</h3>
      <% 
        String alas_string = request.getParameter("alas");
        String tinggi_string = request.getParameter("tinggi");
        double alas = Double.parseDouble(alas_string); 
        double tinggi = Double.parseDouble(tinggi_string); 
        out.println("(" + alas + " X " + tinggi + ") / 2 = " + (alas * tinggi)/2);
      %>
      <br>
      <br>
      <a href="index.jsp">kembali</a>
    </center>
  </body>
</html>
