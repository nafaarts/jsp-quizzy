<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <form action="form2.jsp" method="post" name="form1">
      <table width="200" border="1">
        <tr>
          <td>Nama</td>
          <td><input name="nama" type="text" /></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td><input name="alamat" type="text" /></td>
        </tr>
        <tr>
          <td>Propinsi</td>
          <td>
            <select name="propinsi">
              <option value="BA">Banda Aceh</option>
              <option value="LSM">Lhokseumawe</option>
              <option value="LGS" selected="selected">Langsa</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>Pekerjaan</td>
          <td>
            <input
              name="pekerjaan"
              type="radio"
              value="mahasiswa"
              checked="checked"
            />
            Mahasiswa<br />
            <input name="pekerjaan" type="radio" value="karyawan" />
            Karyawan<br />
            <input
              name="pekerjaan"
              type="radio"
              value="wiraswasta"
            />Wiraswasta<br />
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" value="Submit" /></td>
        </tr>
      </table>
    </form>
    <% 
    String nama = request.getParameter("nama"); 
    String alamat = request.getParameter("alamat");
    String pekerjaan = request.getParameter("pekerjaan"); 
    String propinsi = request.getParameter("propinsi"); 
    if (nama != null && nama.length() > 0){
        out.println("Nama = " + nama+"<br />"); out.println("Alamat = " + alamat+"<br />"); 
        out.println("Propinsi = " + propinsi+ "<br />");
        out.println("Pekerjaan = " + pekerjaan+"<br />"); 
    } 
    %>
  </body>
</html>
