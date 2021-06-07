<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            String Snomor = request.getParameter("nomor");
            String Snama = request.getParameter("ubahnama");
            String Skomentar = request.getParameter("ubahkomentar");

            try { 
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                out.println("Kesalahan (1): SALAH DRIVER ?");
            }

            Connection koneksi = DriverManager.getConnection("jdbc:mysql://192.168.64.2/bukutamu", "belajarjsp", "");
            Statement stm = koneksi.createStatement();
            String sql = "update tabel_bukutamu set nama='"+Snama+"',komentar='"+Skomentar+"'where no='"+Snomor+"'";
            stm.executeUpdate(sql);
            out.print("tes"); 
        %>
        <jsp:forward page="data_bukutamu.jsp" />
    </body>
</html>