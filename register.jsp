<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="LOGIN" />
</jsp:include>

<%@page import="java.sql.*" %>
<% 

  if(session.getAttribute("status_login") == "TRUE"){
    response.sendRedirect("dashboard.jsp");
  }

  String nama = request.getParameter("nama");
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String password_confirm = request.getParameter("password_confirm");
  long time = System.currentTimeMillis();
  String ada = null;
  if(nama != null){
    if(password.equals(password_confirm)){
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
          Statement stm = koneksi.createStatement();
          String sql = "select * from tb_guru where email = '" + email + "'";
          ResultSet hasil = stm.executeQuery(sql);
          if (hasil.next() == false) {
             try {
                  String sql_insert = "insert into tb_guru (nama_lengkap, email, password, date_created) values ('" + nama + "','" + email + "','" + password + "'," + time + ")";
                 stm.executeUpdate(sql_insert); 
                 //out.println(sql_insert);
                 response.sendRedirect("login.jsp?registered=true");
              } catch (Exception err) {
                  ada = "Kesalahan : " + err;
              } 
          } else {
            ada = "Your email already registered!";
          }
        } catch (Exception e) {
          ada = "Kesalahan : " + e;
        } 
    } else {
      ada = "Password not match!";
    }
  }

%>

<section>
  <div
    class="container d-flex justify-content-center align-items-center"
    style="height: 100vh"
  >
    <div class="content col-md-6">
      <h2 class="text-center">Register</h2>
      <hr />
      <% if(ada != null) { %>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
          <strong>Oops!</strong> <%= ada %>.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <% } %>
      <form action="" method="post">
        <div class="form-group">
          <label for="email">Email address</label>
          <input
            type="email"
            class="form-control"
            id="email"
            name="email"
            aria-describedby="emailHelp"
            placeholder="Enter Your Email"
            required
          />
        </div>
         <div class="form-group">
          <label for="nama">Name</label>
          <input
            type="text"
            class="form-control"
            id="nama"
            name="nama"
            aria-describedby="emailHelp"
            placeholder="Enter Your Name"
            required
          />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input
            type="password"
            class="form-control"
            id="password"
            name="password"
            placeholder="Password"
            required
          />
        </div>
        <div class="form-group">
          <label for="password_confirm">Confirm Password</label>
          <input
            type="password"
            class="form-control"
            id="password_confirm"
            name="password_confirm"
            placeholder="Confirm Password"
            required
          />
        </div>
        <hr>
        <button type="submit" name="submit" class="btn btn-primary">Register</button>
        <a class="ml-3" href="login.jsp">Already have an Account, Login</a>

      </form>
    </div>
  </div>
</section>

<jsp:include page="layout/footer.jsp" />
