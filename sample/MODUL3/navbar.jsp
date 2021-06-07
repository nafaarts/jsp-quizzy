<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
        .style1 {font-size: 18px}
        .style2 {font-size: 18px; font-weight: bold; }
        </style>
    </head>
    <body>
        <%
            String kliklink = request.getParameter("link"); 
            String latarhome = "#00FFFF" ;
            String latarproduk = "#00FFFF" ;
            String latarkontak = "#00FFFF" ;
            String latartentang = "#00FFFF" ;
            if (kliklink.equals("home")) latarhome = "#999999";
            if (kliklink.equals("produk")) latarproduk = "#999999"; 
            if (kliklink.equals("kontak")) latarkontak = "#999999";
            if (kliklink.equals("tentang")) latartentang = "#999999"; 
        %>
    <table width="439" border="0" bgcolor="#0000FF"> 
        <tr>
            <td width="91" bgcolor="<%=latarhome%>" class="style1">
                <div align="center" class="style1">
                    <strong>
                    <a href="indexMenu.html?link=home">Home</a>
                    </strong>
                </div>
            </td>
            <td width="91" bgcolor="<%=latarproduk%>" class="style1">
                <div align="center" class="style2">
                    <strong>
                    <a href="indexMenu.html?link=produk">Produk</a>
                    </strong>
                </div>
            </td>
            <td width="91" bgcolor="<%=latarkontak%>" class="style1">
                <div align="center" class="style2">
                    <strong>
                    <a href="indexMenu.html?link=kontak">Kontak</a>
                    </strong>
                </div>
            </td>
            <td width="91" bgcolor="<%=latartentang%>" class="style1">
                <div align="center" class="style2">
                    <strong>
                    <a href="indexMenu.html?link=tentang">Tentang</a>
                    </strong>
                </div>
            </td>
        </tr>
    </table>
<%-- untuk menu produk, kontak dan tentang --%> 
<%
    if (kliklink.equals("produk")){
        out.println("hai ini produk kami ya silahkan datang kembali <br>");
    } else if (kliklink.equals("kontak")) {
        out.println("silahkan hubungi kami nomor kontak kami dibawah ini ya <br>");
    } else if (kliklink.equals("tentang")) {
        out.println("web kami tentang penjualan buku online silahkan dibaca2 ya <br>"); 
    }
%>
    </body>
</html>