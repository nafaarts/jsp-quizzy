<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <form action="form.jsp" method="post" name="form">
      <table width="200" border="1">
        <tr bordercolor="#0000CC">
          <td width="64" bordercolor="#0000FF" bgcolor="#00FFFF">Nama</td>
          <td width="120" bordercolor="#0000FF" bgcolor="#00FFFF">
            <input name="nama" type="text" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <td bordercolor="#0000FF" bgcolor="#00FFFF">Alamat</td>
          <td bordercolor="#0000FF" bgcolor="#00FFFF">
            <input name="alamat" type="text" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <td colspan="2" bordercolor="#0000FF" bgcolor="#00FFFF">
            <input name="Submit" type="submit" value="Submit" />
          </td>
        </tr>
      </table>
    </form>
    <% 
        String nama = request.getParameter("nama"); 
        String alamat = request.getParameter("alamat"); 
        if (nama!=null && nama.length()>0) {
            out.println("Nama = " + nama + "<br />"); 
            out.println("Alamat = " + alamat + "<br />"); 
        } 
    %>
  </body>
</html>
