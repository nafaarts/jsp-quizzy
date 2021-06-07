<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="HOME" />
</jsp:include>

<%@page import="java.sql.*" %>
<%@page import="java.time.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<% 
  ResultSet hasil = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "root", "Kipasangin123");
    Statement stm = koneksi.createStatement();

    String sql = "SELECT * FROM tb_quiz WHERE status = 1 ORDER BY hits DESC LIMIT 4";
    hasil = stm.executeQuery(sql);
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 
  
  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm");
%>

<div
  id="carouselExampleIndicators"
  class="carousel slide"
  data-ride="carousel"
  style="margin-top: 54px; height: 600px"
>
  <ol class="carousel-indicators">
    <li
      data-target="#carouselExampleIndicators"
      data-slide-to="0"
      class="active"
    ></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div
      style="background-image: url(img/1.png); background-color: #2d6cca"
      class="carousel-item active"
    ></div>
    <div
      style="background-image: url(img/2.png)"
      class="carousel-item bg-warning"
    ></div>
    <div
      style="background-image: url(img/3.png); background-color: #e25c33"
      class="carousel-item"
    ></div>
  </div>
  <style>
    .carousel-item {
      height: 600px;
      background-repeat: no-repeat;
      background-size: contain;
      background-position: center center;
      /* background-attachment: fixed; */
    }

    .carousel-indicators > li {
      border-radius: 50%;
      height: 10px;
      width: 10px;
    }
  </style>
  <a
    class="carousel-control-prev"
    href="#carouselExampleIndicators"
    role="button"
    data-slide="prev"
  >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a
    class="carousel-control-next"
    href="#carouselExampleIndicators"
    role="button"
    data-slide="next"
  >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<%
  ResultSet hasil_all_count = null;
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
    Statement stm = koneksi.createStatement();

    String sql_count = "select count(*) as QuizCount, SUM(hits) as HitsCount, (select COUNT(*) from tb_guru) as UsersCount from tb_quiz";
    hasil_all_count = stm.executeQuery(sql_count);
    hasil_all_count.next();
  } catch (Exception e) {
    out.println("Kesalahan :" +e);
  }

%>
<section class="users-info">
  <div class="container">
    <div class="row py-5 my-5">
      <div class="col-4 text-center users-info-items">
        <i class="fab fa-fw fa-leanpub"></i
        ><span class="number-info-items"><%= hasil_all_count.getString("QuizCount") %></span> <br />
        QUIZ
      </div>
      <div class="col-4 text-center users-info-items">
        <i class="fas fa-fw fa-users"></i
        ><span class="number-info-items"><%= hasil_all_count.getString("UsersCount") %></span> <br />
        USERS
      </div>
      <div class="col-4 text-center users-info-items">
        <i class="fas fa-fw fa-hand-pointer"></i
        ><span class="number-info-items"><%= hasil_all_count.getString("HitsCount") %></span> <br />
        HITS
      </div>
    </div>
  </div>
</section>

<style>
  .users-info-items {
    font-size: 1rem;
    color: #535151;
  }

  .users-info-items .fa-fw {
    font-size: 3rem;
  }

  .number-info-items {
    font-size: 3rem;
    margin-left: 10px;
  }

  .number-info-items::after {
    content: "+";
  }
</style>

<section>
  <div class="container py-5">
    <h2 class="text-center">Most Popular</h2>
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

<section style="background-color: #f6f6f6">
  <div class="content text-center py-5">
    <h3 class="my-3">Powered by</h3>
    <img class="mb-5" src="./img/nafaarts.png" alt="" width="300" />
  </div>
</section>

<jsp:include page="layout/footer.jsp" />
