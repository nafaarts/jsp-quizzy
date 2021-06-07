<jsp:include page="layout/navbar.jsp">
  <jsp:param name="current" value="ADD" />
</jsp:include>

<%@page import="java.sql.*" %>
<%@page import="java.time.*" %>
<%
  String title = request.getParameter("title");
  String subjects = request.getParameter("subjects");
  String description = request.getParameter("description");
  String link = request.getParameter("link");
  String status = request.getParameter("status");
  String date_expired = request.getParameter("date_expired");

  //generate random code
  String ALPHA_NUMERIC_STRING = "abcdeffghijklmnopqrstuvwxyz0123456789";
  int count = 6;
  StringBuilder builder = new StringBuilder();
  while (count-- != 0) {
    int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
    builder.append(ALPHA_NUMERIC_STRING.charAt(character));
  }
  String referral_code = builder.toString();

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
     
      String sql_insert = "insert into tb_quiz (id_guru_fk, referral_code, judul, mapel, description, embed_link, hits, status, date_expired, date_created) values (" + session.getAttribute("user_id") + ",'"+referral_code+"','" + title + "','" + subjects + "','" + description + "','" + link + "', 0," + status + "," + date_expired_millis + "," + now_time + ")";
      stm.executeUpdate(sql_insert); 
      out.println(sql_insert);
      response.sendRedirect("dashboard.jsp?response=added");
    } catch (Exception e) {
      out.println("Kesalahan : " + e);
    } 

  }
%>

<section>
  <form method="post">
    <div class="container my-5 py-5 text-muted">
      <div class="hello mb-2">
        <h2 class="float-left">Add Quizyy</h2>
        <div class="btn-group float-right">
          <button class="btn btn-outline-primary" type="submit">
            <i class="fas fa-fw fa-plus"></i> Add Quiz
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
        <input required
          type="text"
          class="form-control"
          id="title"
          name="title"
          placeholder="Enter the Title"
        />
      </div>
      <div class="form-group">
        <label for="subjects">Subjects</label>
        <input required
          type="text"
          class="form-control"
          id="subjects"
          name="subjects"
          placeholder="Enter the subjects"
        />
      </div>
      <div class="form-group">
        <label for="description">Description</label>
        <textarea required
          class="form-control"
          id="description"
          rows="3"
          name="description"
          placeholder="Enter the Description"
        ></textarea>
      </div>
      <div class="form-group">
        <label for="link">G-Form Embed link</label>
        <textarea required
          class="form-control"
          id="link"
          rows="3"
          name="link"
          placeholder="Enter the link"
        ></textarea>
      </div>
      <div class="form-group">
        <label>Status</label>
        <br />
        <div class="form-check form-check-inline">
          <input required
            class="form-check-input"
            type="radio"
            name="status"
            id="status1"
            value="1"
          />
          <label class="form-check-label" for="status1">Public</label>
        </div>
        <div class="form-check form-check-inline">
          <input required
            class="form-check-input"
            type="radio"
            name="status"
            id="status0"
            value="0"
          />
          <label class="form-check-label" for="status2">Private</label>
        </div>
      </div>
      <div class="form-group">
        <label for="Expired Date">Expired Date</label>
        <input required type="datetime-local" name="date_expired" class="form-control" id="Expired Date" />
      </div>
    </div>
  </form>
</section>

<jsp:include page="layout/footer.jsp" />
