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
    <table>
      <tr>
        <td>
          <h3>BIODATAKU</h3>
          <form action="" method="post">
            <table>
              <tr>
                <td>Nama</td>
                <td>: <input type="text" name="nama" /></td>
                <td> | Nama</td>
                <td>: <%= nama %></td>
              </tr>
              <tr>
                <td>NIM</td>
                <td>: <input type="number" name="nim" /></td>
                <td> | NIM</td>
                <td>: <%= nim %></td>
              </tr>
              <tr>
                <td>Jurusan</td>
                <td>: <input type="text" name="jurusan" /></td>
                <td> | Jurusan</td>
                <td>: <%= jurusan %></td>
              </tr>
              <tr>
                <td>Kelas</td>
                <td>: <input type="text" name="kelas" /></td>
                <td> | Kelas</td>
                <td>: <%= kelas %></td>
              </tr>
              <tr>
                <td>Alamat</td>
                <td>: <input type="text" name="alamat" /></td>
                <td> | Alamat</td>
                <td>: <%= alamat %></td>
              </tr>
              <tr>
                <td>Tempat Lahir</td>
                <td>: <input type="text" name="tempat_lahir" /></td>
                <td> | Tempat Lahir</td>
                <td>: <%= tempat_lahir %></td>
              </tr>
              <tr>
                <td>Tanggal Lahir</td>
                <td>: <input type="date" name="tanggal_lahir" /></td>
                <td> | Tanggal Lahir</td>
                <td>: <%= tanggal_lahir %></td>
              </tr>
              <tr>
                <td><br /><button type="submit">Submit</button></td>
              </tr>
            </table>
          </form>
        </td>
      </tr>
    </table>
  </body>
</html>
