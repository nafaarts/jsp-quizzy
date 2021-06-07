<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BIODATA</title>
  </head>
  <body>
    <%
        String nama = request.getParameter("nama");
        String nim = request.getParameter("nim");
        String jurusan = request.getParameter("jurusan");
        String kelas = request.getParameter("kelas");
        String alamat = request.getParameter("alamat");
        String tempat_lahir = request.getParameter("tempat_lahir");
        String tanggal_lahir = request.getParameter("tanggal_lahir");
    %>
    <h3>BIODATAKU</h3>
      <table>
        <tr>
          <td>Nama</td>
          <td>: <%= nama %></td>
        </tr>
        <tr>
          <td>NIM</td>
          <td>: <%= nim %></td>
        </tr>
        <tr>
          <td>Jurusan</td>
          <td>: <%= jurusan %></td>
        </tr>
        <tr>
          <td>Kelas</td>
          <td>: <%= kelas %></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td>: <%= alamat %></td>
        </tr>
        <tr>
          <td>Tempat Lahir</td>
          <td>: <%= tempat_lahir %></td>
        </tr>
        <tr>
          <td>Tanggal Lahir</td>
          <td>: <%= tanggal_lahir %></td>
        </tr>
        <tr>
          <td><br /><a href="tugas_1_bio.jsp">Kembali</a></td>
        </tr>
      </table>
  </body>
</html>
