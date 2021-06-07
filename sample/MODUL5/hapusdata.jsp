<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hapus Data</title>
    </head>
    <body>
    <%@page import="java.sql.*" %>
    <%
        String nomor = request.getQueryString();
        try { 
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            out.println("Kesalahan (1): SALAH DRIVER ?");
        }

        Connection koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
        Statement stm = koneksi.createStatement();
        String sql = "delete from tabel_bukutamu where no=" +nomor; 
        stm.executeUpdate(sql);
        out.println("data berhasil dihapus");
    %>
    <jsp:forward page="data_bukutamu.jsp" /> 
 </body>
</html>