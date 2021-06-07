<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hasil Lingkaran</title>
  </head>
  <body>
    <center>
      <h3>Hasil Lingkaran</h3>
      <% 
        String jari_jari_string = request.getParameter("jari_jari");
        double jari_jari = Double.parseDouble(jari_jari_string); 
        out.println("PI X " + jari_jari + " X " + jari_jari + " = " + 3.14 * jari_jari * jari_jari);
      %>
      <br>
      <br>
      <a href="index.jsp">kembali</a>
    </center>
  </body>
</html>