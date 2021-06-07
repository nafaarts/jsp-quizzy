<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tes Koneksi Database</title>
    </head>
    <body>
        <%@ page import="java.sql.Connection, java.sql.DriverManager" %>
        <%
            boolean ada_kesalahan = false; 
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception ex) {
                out.println("Kesalahan: " + ex); ada_kesalahan = true;
            }

            if (!ada_kesalahan) {
                //Bentuk koneksi
                Connection koneksi = null;
                try {
                    koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
                    out.println("Koneksi berhasil");
                } catch (Exception ex) {
                    out.println("Kesalahan: " + ex);
                } 
            }
        %> 
    </body>
</html>