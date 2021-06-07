<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <p>
      ANDA TELAH MELAKUKAN LOGIN, dan informasi Anda berikut ini tersimpan di
      objek session
    </p>
    <table width="200" border="1">
      <tr>
        <td width="77">Nama</td>
        <td width="107"><%= session.getAttribute("nama") %></td>
      </tr>
      <tr>
        <td>Profesi</td>
        <td><%=session.getAttribute("profesi")%></td>
      </tr>
    </table>
    <p><a href="logout.jsp">LOGOUT </a></p>
    <p>
      APABILA ANDA TELAH LOGIN ANDA DAPAT MENGKLIK
      <a href="CekSession.jsp"> link </a> INI UNTUK MELAKUKAN CEK SESSION.
    </p>
    <p>APABILA ANDA TELAH LOGOUT ANDA TIDAK DAPAT MELAKUKAN CEKSESSION</p>
  </body>
</html>
