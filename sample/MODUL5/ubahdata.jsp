<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ubah data buku tamu</title>
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
        String sql = "select * from tabel_bukutamu where tabel_bukutamu.no=" + nomor;
        ResultSet hasil = stm.executeQuery(sql); 
        hasil.next();
    %>
    <form method="post" action="updatedata.jsp">
    Nama : <br> <textarea name=ubahnama cols="30"> <%=hasil.getString("nama")%> </textarea><br>
    Komentar : <br> <textarea name=ubahkomentar cols=40 rows="5"> <%= hasil.getString("komentar")%> </textarea>
    <%
        out.println("<input type=\"hidden\" value = "+nomor+" name = \"nomor\">");
    %>
    <br><br>
    <input type =submit value ="SUBMIT"> <input type =reset va\lue ="RESET">
    </form>
    </body>
</html>