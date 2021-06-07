<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <body bgcolor="white">
      <form action="proseslatform.jsp" method="post">
        <table border="1">
          <tr>
            <td colspan="2">DATA</td>
          </tr>
          <tr>
            <td>Name :</td>
            <td><input type="text" name="nama" /></td>
          </tr>
          <tr>
            <td>Gender :</td>
            <td>
              <input type="radio" name="gender" value="M" checked />Male
              <input type="radio" name="gender" value="F" />Female
            </td>
          </tr>
          <tr>
            <td>Email :</td>
            <td><input type="text" name="email" /></td>
          </tr>
          <tr>
            <td>Kompetensi :</td>
            <td>
              <select name="kompetensi">
                <option value="Programming :: J2EE">Programming :: J2EE</option>
                <option value="Programming :: JSP">Programming :: JSP</option>
                <option value="OS :: Linux">OS :: Linux</option>
                <option value="OS :: Solaris">OS :: Solaris</option>
                <option value="OS :: Windows">OS :: Windows</option>
                <option value="DB :: mySQL">DB :: mySQL</option>
                value="Programming :: Java Visual">Programming :: Java
                <option value="DB :: Oracle">DB :: Oracle</option>
                <option value="DB :: Microsoft Access">
                  DB :: Microsoft Access
                </option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Hoby :</td>
            <td>
              <input type="checkbox" name="hoby1" value="berenang" /> Berenang
              <input type="checkbox" name="hoby2" value="makan" /> Makan
              <input type="checkbox" name="hoby3" value="badminton" /> Badminton
              <input type="checkbox" name="hoby4" value="membaca" /> Membaca
              <input type="checkbox" name="hoby5" value="bolaBasket" /> Basket
              Ball
            </td>
          </tr>
          <tr>
            <td></td>
            <td><input type="submit" value="Proceed" /></td>
          </tr>
        </table>
      </form>
    </body>
  </body>
</html>
