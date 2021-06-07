<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="START" />
</jsp:include>

<%@page import="java.sql.*" %>
<%@page import="java.time.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<% 
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
    Statement stm = koneksi.createStatement();
    String sqlUpdate = "UPDATE tb_quiz SET hits = hits + 1 WHERE referral_code = '" + request.getParameter("code") + "'";
    stm.executeUpdate(sqlUpdate); 
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 

  ResultSet hasil = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
    Statement stm = koneksi.createStatement();

    String sql = "SELECT * FROM tb_quiz where referral_code = '" + request.getParameter("code") + "'";
    hasil = stm.executeQuery(sql);
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 
  

  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm");

%>

<% if(hasil.next()) { %>
<section>
  <div class="container mt-5 py-5 text-muted">
    <h2 class="text-center">happy work on assignment</h2>
    <p class="text-center">Good luck :)</p>
    <hr />
    <div class="row">
      <div class="col-md-4 p-3">
        <table class="table">
          <tbody>
            <tr>
              <th scope="row">Title</th>
              <td><%= hasil.getString("judul") %></td>
            </tr>
            <tr>
              <th scope="row">Subject</th>
              <td><%= hasil.getString("mapel") %></td>
            </tr>
            <tr>
              <th scope="row">Hits</th>
              <td><i class="fas fa-fw fa-eye"></i> <%= hasil.getString("hits") %></td>
            </tr>
            <tr>
              <th scope="row">Status</th>
              <td>
                <% if(hasil.getString("status").equals("1")) { %>
                  <i class="fas fa-fw fa-globe-asia"></i> Public</td>
                <% } else { %>
                  <i class="fas fa-fw fa-key"></i> Private</td>
                <% } %>

            </tr>
            <tr>
              <th scope="row">Date Expired</th>
              <td>
                <% 
                  long date_expired = Long.parseLong(hasil.getString("date_expired"));
                  Date resultdate = new Date(date_expired);
                  out.println(sdf.format(resultdate));
                %>
              </td>
            </tr>
            <tr>
              <th scope="row">Description</th>
              <td>
                <%= hasil.getString("description") %>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="col-md-8 d-flex justify-content-center h-100">
        <%= hasil.getString("embed_link") %>
      </div>
    </div>
  </div>
</section>
<% } else { %>
<script>

  alert("Tidak ada data dengan code <%= request.getParameter("code") %>");
  window.location.replace("quiz.jsp");

</script>
<% } %>

<jsp:include page="layout/footer.jsp" />
