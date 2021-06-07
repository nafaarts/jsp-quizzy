<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="LOGIN" />
</jsp:include>

<%@page import="java.sql.*" %>
<% 

  if(session.getAttribute("status_login") == "TRUE"){
    response.sendRedirect("dashboard.jsp");
  }

  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String ada = null;
  if(email != null){
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
      Statement stm = koneksi.createStatement();
      String sql = "select * from tb_guru where email = '" + email + "'";
      ResultSet hasil = stm.executeQuery(sql);
      if (hasil.next()) {
          if (password.equals(hasil.getString("password"))){
              session.setAttribute("username_login" ,hasil.getString("nama_lengkap"));
              session.setAttribute("status_login","TRUE");
              session.setAttribute("user_id", hasil.getString("id_guru"));
              response.sendRedirect("dashboard.jsp");
          } else {
            ada = "Wrong Password!";
          }
      } else {
        ada = "Your account not registered!";
      }
    } catch (Exception e) {
      ada = "Kesalahan : " + e;
    } 
  }

%>

<section>
  <div
    class="container d-flex justify-content-center align-items-center"
    style="height: 100vh"
  >
    <div class="content col-md-6">
      <h2 class="text-center">Login</h2>
      <hr />
      <% 
      String login = request.getParameter("registered");
      if(login != null) { %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Congrats!</strong> Your account has been added! Please login.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <% } %>
      <% if(ada != null) { %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          <strong>Oops!</strong> <%= ada %>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <% } %>
      <form method="post">
        <div class="form-group">
          <label for="email">Email address</label>
          <input
            type="email"
            name="email"
            class="form-control"
            id="email"
            aria-describedby="emailHelp"
            placeholder="Enter email"
          />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input
            type="password"
            name="password"
            class="form-control"
            id="password"
            placeholder="Password"
          />
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">Login</button>
        <a class="ml-3" href="register.jsp">I don't have an account, Register</a>
      </form>
    </div>
  </div>
</section>

<jsp:include page="layout/footer.jsp" />
