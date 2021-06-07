<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="EDIT" />
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

    String sql = "SELECT * FROM tb_quiz where id_quiz = " + request.getParameter("id");
    hasil = stm.executeQuery(sql);
  } catch (Exception e) {
    out.println("Kesalahan : " + e);
  } 
  
  hasil.next();

  long yourmilliseconds = Long.parseLong(hasil.getString("date_expired"));
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
  Date resultdate = new Date(yourmilliseconds);

  String title = request.getParameter("title");
  String subjects = request.getParameter("subjects");
  String description = request.getParameter("description");
  String link = request.getParameter("link");
  String status = request.getParameter("status");
  String date_expired = request.getParameter("date_expired");

  if(title != null){
    //split time
    String[] datetime = date_expired.split("T");
    String[] date = datetime[0].split("-");
    String[] time = datetime[1].split(":");
    LocalDateTime ldt = LocalDateTime.of(Integer.parseInt(date[0]), Integer.parseInt(date[1]), Integer.parseInt(date[2]), Integer.parseInt(time[0]), Integer.parseInt(time[1]), 0);
    ZonedDateTime zdt = ldt.atZone(ZoneId.of("Asia/Jakarta"));
    long date_expired_millis = zdt.toInstant().toEpochMilli();
    long now_time = System.currentTimeMillis();

    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
      Statement stm = koneksi.createStatement();
      String sqlUpdate = "UPDATE `tb_quiz` SET `judul` = '"+title+"', `mapel` = '"+subjects+"', `description` = '"+description+"', `embed_link` = '"+link+"', `status` = '"+status+"', `date_expired` = '"+date_expired_millis+"' WHERE `tb_quiz`.`id_quiz` = " + request.getParameter("id");

      stm.executeUpdate(sqlUpdate); 
      //out.println(sqlUpdate);
      response.sendRedirect("dashboard.jsp?response=edited");
    } catch (Exception e) {
      out.println("Kesalahan : " + e);
    } 

  }
%>
<section>
  <form method="post">
    <div class="container my-5 py-5 text-muted">
      <div class="hello mb-2">
        <h2 class="float-left">Edit Quizyy</h2>
        <div class="btn-group float-right">
          <button class="btn btn-outline-primary" type="submit">
            <i class="fas fa-fw fa-edit"></i> Edit Quiz
          </button>
          <a class="btn btn-outline-secondary" href="dashboard.jsp"
            ><i class="fas fa-fw fa-times"></i> Cancel</a
          >
        </div>
      </div>
      <br />
      <hr />
      <div class="form-group">
        <label for="title">Title</label>
        <input
          type="text"
          class="form-control"
          name="title"
          id="title"
          placeholder="Enter the Title"
          value="<%= hasil.getString("judul") %>"
        />
      </div>
      <div class="form-group">
        <label for="subjects">Subjects</label>
        <input
          type="text"
          class="form-control"
          name="subjects"
          id="subjects"
          placeholder="Enter the subjects"
          value="<%= hasil.getString("mapel") %>"
        />
      </div>
      <div class="form-group">
        <label for="description">Description</label>
        <textarea
          class="form-control"
          id="description"
          name="description"
          rows="3"
          placeholder="Enter the Description"
        ><%= hasil.getString("description") %></textarea>
      </div>
      <div class="form-group">
        <label for="link">G-Form Embed link</label>
        <textarea
          class="form-control"
          id="link"
          name="link"
          rows="3"
          placeholder="Enter the link"
        ><%= hasil.getString("embed_link") %></textarea>
      </div>
      <div class="form-group">
        <label>Status</label>
        <br />
        <div class="form-check form-check-inline">
          <input
            class="form-check-input"
            type="radio"
            name="status"
            id="status1"
            value="1"
          />
          <label class="form-check-label" for="status1">Public</label>
        </div>
        <div class="form-check form-check-inline">
          <input
            class="form-check-input"
            type="radio"
            name="status"
            id="status0"
            value="0"
          />
          <label class="form-check-label" for="status2">Private</label>
        </div>
      </div>
      <script>
          // var newcol = 'status<%= hasil.getString("status") %>';
          // console.log(newcol);
          // $("#" + newcol).prop('checked', true);
          $("input:radio[name=status]").val(['<%= hasil.getString("status") %>']);
      </script>
      <div class="form-group">
        <label for="Expired Date">Expired Date</label>
        <input type="datetime-local" name="date_expired" class="form-control" id="Expired Date" value="<%= sdf.format(resultdate) %>" />
      </div>
    </div>
  </form>
</section>

<jsp:include page="layout/footer.jsp" />
