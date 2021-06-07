<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hasil Layang</title>
  </head>
  <body>
    <center>
      <h3>Hasil Layang</h3>
      <% 
        String vertikal_string = request.getParameter("vertikal");
        String horizontal_string = request.getParameter("horizontal");
        double vertikal = Double.parseDouble(vertikal_string); 
        double horizontal = Double.parseDouble(horizontal_string); 
        out.println("(" + vertikal + " X " + horizontal + ") / 2 = " + (vertikal * horizontal)/2);
      %>
      <br>
      <br>
      <a href="index.jsp">kembali</a>
    </center>
  </body>
</html>
