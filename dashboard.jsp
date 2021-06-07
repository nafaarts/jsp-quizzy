<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="DASHBOARD" />
</jsp:include>

<%@page import="java.sql.*" %>
<%@page import="java.time.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<% 

  if(session.getAttribute("status_login") != "TRUE"){
    response.sendRedirect("login.jsp");
  }

  ResultSet hasil = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
    Statement stm = koneksi.createStatement();

    String sql = "SELECT * FROM tb_quiz where id_guru_fk = " + session.getAttribute("user_id");
    hasil = stm.executeQuery(sql);
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 
  
  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm");
%>

<section>
  <div class="container my-5 py-5 text-muted">
    <div class="hello mb-2">
      <h2 class="float-left">Welcome, <%= session.getAttribute("username_login") %> !</h2>
      <div class="btn-group float-right">
        <a class="btn btn-outline-primary" href="add.jsp"
          ><i class="fas fa-fw fa-plus"></i> New Quiz</a
        >
        <a class="btn btn-outline-secondary" href="logout.jsp"
          ><i class="fas fa-fw fa-sign-out-alt"></i> Logout</a
        >
      </div>
    </div>
    <br />
    <hr />
    <div class="row">
      <%
        ResultSet hasil_all_count = null;
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
          Statement stm = koneksi.createStatement();

          String sql_count = "select count(*) as QuizCount, SUM(hits) as HitsCount from tb_quiz where id_guru_fk = " + session.getAttribute("user_id");
          hasil_all_count = stm.executeQuery(sql_count);

        } catch (Exception e) {
          out.println("Kesalahan :" +e);
        }

        hasil_all_count.next();
      %>

      <div class="col-md-6">
        <div class="card card-info p-3">
          <i class="fab fa-fw mr-3 fa-leanpub"></i><span><%= hasil_all_count.getString("QuizCount") %> quizzes</span>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card card-info p-3">
          <i class="fas fa-fw mr-1 fa-hand-pointer"></i> <span><% if(hasil_all_count.getString("HitsCount") == null) { out.println("0"); } else { out.println(hasil_all_count.getString("HitsCount")); } %> Hits</span>
        </div>
      </div>
    </div>
    <hr />
      <% String response_proses = request.getParameter("response");
      if(response_proses != null) { %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Okay!</strong> Your quiz has been <%= response_proses %>.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <% } %>
    <table class="table table-bordered table-responsive-lg">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Status</th>
          <th scope="col">Title</th>
          <th scope="col">Code</th>
          <th scope="col">Lesson</th>
          <th scope="col">Hits</th>
          <th scope="col">Date Expired</th>
          <th scope="col">Date Created</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <% int no = 1;  
          try {
            if (hasil.next() == false) { 
              out.println("<tr><td class='text-center py-5' colspan='9'>No Quizzes, Click <strong>New Quiz</strong> to start sharing :)</td></tr>");
             } else {
               do { 
                  out.println("<tr><th scope='row'>" + no + "</th><td>");
                  no++;
                  if(hasil.getString("status").equals("1")) {
                    out.println("<span class='badge badge-success'>Public</span></td>");
                  } else {
                    out.println("<span class='badge badge-warning'>Private</span></td>");
                  }
                  out.println("<td>" + hasil.getString("judul") + "</td>");
                  out.println("<td>" + hasil.getString("referral_code") + "</td>");
                  out.println("<td>" + hasil.getString("mapel") + "</td>");
                  out.println("<td>" + hasil.getString("hits") + "</td><td>");

                  long date_expired = Long.parseLong(hasil.getString("date_expired"));
                  Date resultdate = new Date(date_expired);
                  out.println(sdf.format(resultdate) + "</td><td>");

                  long date_created = Long.parseLong(hasil.getString("date_created"));
                  Date resultdatecreated = new Date(date_created);
                  out.println(sdf.format(resultdatecreated) + "</td><td>");
                  
                  out.println("<a class='badge badge-danger' onclick='return confirm_delete()' href='delete.jsp?id=" + hasil.getString("id_quiz") + "'><i class='fas fa-fw fa-trash'></i></a>");
                  out.println("<a class='badge badge-warning' href='edit.jsp?id=" + hasil.getString("id_quiz") + "'><i class='fas fa-fw fa-edit'></i></a></td></tr>");
                }  while (hasil.next());
             }
          } catch (Exception e) {
            out.println("Kesalahan :" +e);
          } %>
      </tbody>
    </table>
    
  </div>
</section>
<script>
function confirm_delete() {
  return confirm('are you sure?');
}
</script>
<style>
  .card-info {
    font-size: 3rem;
    display: block;
  }
</style>

<jsp:include page="layout/footer.jsp" />
