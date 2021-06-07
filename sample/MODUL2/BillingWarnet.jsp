<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <h1>SELAMAT DATANG DI WARNET POLTEK ACEH</h1>
    <h3>SILAHKAN ISI BIODATA ANDA</h3>
    <form>
      Masukan Nama Anda : <br />
      <input type="text" name="nama" /><br />
      Masukan Nomor Komputer : <br />
      <input type="text" name="nokom" /><br />
      Masukan Berapa Jam : <br />
      <input type="text" name="jam" /><br />
      <input type="submit" value="Proses" /> <br />
    </form>
    <% 
        String namaAnda = request.getParameter("nama"); 
        String NomorKomputer = request.getParameter("nokom"); 
        String BerapaJam = request.getParameter("jam"); 
        int harga = 3000; 
        if (BerapaJam != null) {
            double angka = Double.valueOf (BerapaJam).doubleValue(); 
            out.println("Nama Saya : " +namaAnda+ "<br />"); 
            out.println("Nomor Komputer : " +NomorKomputer+ "<br />"); 
            out.println("Berapa Jama : " + angka+ "<br />");
            double total = harga * angka; out.println("Total Harga : " + total+ "<br />");
            if (angka >= 10 ) { 
                double diskon = 0.1 * total; 
                out.println("diskon : "+diskon+ "<br />"); 
                double bayar = total - diskon; 
                out.println("Total seluruhnya : " + bayar+ "<br />"); 
            } 
        } 
    %>
  </body>
</html>
