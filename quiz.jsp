<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="QUIZ" />
</jsp:include>

<%@page import="java.sql.*" %>
<%@page import="java.time.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<% 
  ResultSet hasil = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
    Statement stm = koneksi.createStatement();

    String sql = "SELECT * FROM tb_quiz WHERE status = 1 ORDER BY id_quiz DESC";
    hasil = stm.executeQuery(sql);
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 
  
  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm");
%>

<section>
  <div class="container mt-5 py-5">
    <h2 class="text-center">Quizzes</h2>
    <p class="text-center">Grab one that you thing, you can answer it</p>
    <hr />
    <section class="input py-5">
      <div class="col-md-8 m-auto">
        <form method="get" action="start_quiz.jsp">
          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="Enter Referral Code"
              aria-label="Referral Code"
              name="code"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-primary"
                type="submit"
                id="button-addon2"
              >
                Search
              </button>
            </div>
          </div>
        </form>
      </div>
    </section>
    <hr />
    <div class="row">
    <% while(hasil.next()) { %>
      <div class="col-md-3 mb-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title crop-text-title"><%= hasil.getString("judul") %></h5>
            <h6 class="card-subtitle mb-2 text-muted"><%= hasil.getString("mapel") %></h6>
            <p class="card-text crop-text">
              <%= hasil.getString("description") %>
            </p>
            <small class="mb-2 text-muted"><%= hasil.getString("hits") %> <i class="fas fa-fw fa-eye"></i></small>

            <a href="start_quiz.jsp?code=<%= hasil.getString("referral_code") %>" class="card-link btn"
              ><i class="fas fa-fw fa-play"></i> Start Quiz</a
            >
          </div>
        </div>
      </div>
    <% } %>
    </div>
  </div>
</section>

<jsp:include page="layout/footer.jsp" />
