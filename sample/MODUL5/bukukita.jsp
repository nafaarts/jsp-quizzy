<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Buku Tamu Kita</title>
  </head>
  <body bgcolor="pink">
    <%@page import="java.sql.Connection, java.sql.DriverManager,java.sql.Statement, java.sql.ResultSet" %>
    <h3><center>Terima Kasih Telah Mengisi Buku Tamu Kita...</center></h3>
    <hr />
    <a href="lihat_bukuTamu.jsp"> Silahkan Lihat Buku Tamu Kita... </a>
    <%
        boolean cek = false;
        String Snama = request.getParameter("nama");
        String Skomentar = request.getParameter("komentar");
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
        } catch (Exception e) {
            out.println("Kesalahan :" +e);
            cek = true; 
        }
                
        if (!cek) {
            //bentuk koneksi
            Connection koneksi = null; 
            try {
                koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
            } catch (Exception e) {
                out.println("Kesalahan :" +e);
                // cek=true; 
            }
            
            if (!cek) {
                //bentuk statement
                try {
                    Statement stm = koneksi.createStatement();
                    String sql = ("insert into tabel_bukutamu (nama,komentar) values (\'"+Snama+"\',\'"+Skomentar+"\')");
                    stm.executeUpdate(sql); 
                } catch (Exception e) {
                    out.println("Kesalahan :" +e); 
                    // cek=true;
                } 
            }
        } 
    %>
  </body>
</html>
