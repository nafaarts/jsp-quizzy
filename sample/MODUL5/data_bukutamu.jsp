<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
<%@page import = "java.sql.*" %>
<table border ="1" cellpadding ="5" cellspacing="0" bordercolor ="#000000">
 <tr>
        <td>No</td>
        <td>Nama</td>
        <td>Komentar</td>
        <td>Aksi</td>
</tr> 

<%
    try { 
        Class.forName("com.mysql.jdbc.Driver");
    } catch (Exception e) {
        out.println("Kesalahan (1): SALAH DRIVER ?");
    }

    try {
        Connection koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
        Statement stm = koneksi.createStatement();
        String sql = "select * from tabel_bukutamu order by no";
        ResultSet hasil = stm.executeQuery(sql);

        while (hasil.next()) {
            int no = hasil.getInt("no");
            String nama = hasil.getString("nama");
            String komentar = hasil.getString("komentar");
            out.println("<tr><td>" +no+ "</td>"); out.println("<td>" +nama+ "</td>"); out.println("<td>" +komentar+ "</td>");
            out.println("<td> <a href = ubahdata.jsp?" +no+ ">Ubah Data </a>"); out.println(" | <a href = hapusdata.jsp?" +no+ ">Hapus Data </a>");
            out.println("</td></tr>"); }
        } catch (Exception e) {
            out.println("Kesalahan 2 : tampil data" );
        }
%> 
</table>
    <br> 
    </body>
</html>