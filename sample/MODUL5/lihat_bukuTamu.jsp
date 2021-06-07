<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buku Tamu Kita</title>
    </head>
    <body bgcolor =pink>
    <%@page import = "java.sql.*" %>
        <h3><center> Buku Tamu Kita... </center></h3>
        <hr>
        <a href=bukutamu.html><center> Silahkan Isi Buku Tamu Kita...</center> <br></a>

    <%  
        boolean cek = false;

        try { 
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            out.println("Kesalahan :" +e); cek=true;
        }

        if (!cek) {
            //bentuk koneksi
            Connection koneksi = null; 
            try {
                koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
            } catch (Exception e) { 
                out.println("Kesalahan :" +e); 
                cek=true;
            }

            if (!cek) {
                //bentuk resultset 
                ResultSet hasil = null; 
                try {
                    Statement stm = koneksi.createStatement();
                    String sql = ("select * from tabel_bukutamu order by no desc");
                    hasil = stm.executeQuery(sql);
                } catch (Exception e) {
                    out.println("Kesalahan :" +e);
                    cek=true; 
                }

            if (!cek) {
                try {
                    while (hasil.next()) {
                        int no = hasil.getInt("no");
                        String nama = hasil.getString("nama");
                        String komentar = hasil.getString("komentar");
                        out.println("<b>" +no+ "." +nama+ "</b><br>" +komentar);
                        out.println("<br>========================================<br><br>"); 
                    }
                } catch (Exception e) {
                    out.println("Kesalahan :" +e);
                } 
            }
        }
    } %>
    </body>
</html>