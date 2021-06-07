<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <h3>TUGAS 2 MODUL 2</h3>
    <form method="post"> 
    Nama : <br />
      <input type="text" name="nama" /><br />
    NIM : <br />
      <input type="text" name="nim" /><br />
    Nilai IPK : <br />
      <input type="text" name="ipk" /><br />
    Jumlah Masa Studi : <br />
      <input type="text" name="studi" /><br />
      <br />
      <input type="submit" value="Proses" /> <br />
    </form>
    <hr>
    <% 
        String nama = request.getParameter("nama"); 
        String nim = request.getParameter("nim"); 
        String ipk = request.getParameter("ipk"); 
        String studi = request.getParameter("studi"); 
        String status = "";
        if (ipk != null) {
            out.println("Nama : " +nama+ "<br />"); 
            out.println("NIM : " +nim+ "<br />"); 
            out.println("IPK : " + ipk+ "<br />");
            out.println("Masa Studi : " +studi+ "<br />");
            double nilai_ipk = Double.valueOf(ipk).doubleValue();
            double masa_studi = Double.valueOf(studi).doubleValue();
            if ((nilai_ipk >= 3.5)&&(masa_studi < 4)) {
                status = "cumloude";
            } else if ((nilai_ipk >= 3.5)&&(masa_studi >= 4)) {
                status = "tidak cumloude";
            } else if ((nilai_ipk < 3.5)&&(masa_studi < 4)){
                status = "memuaskan";
            } else {
                status = "biasa saja";
            }
            out.println("Status : <strong>" + status + "</strong>");
        } 
    %>
  </body>
</html>
