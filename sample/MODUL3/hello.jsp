<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <% 
    String nama = request.getParameter("nama"); 
    out.println("Pemakai : " + nama+ "<br />"); 
    String nim = request.getParameter("nim");
    out.println("Pemakai : " + nim+ "<br />"); 
    String jurusan = request.getParameter("jurusan"); 
    out.println("Pemakai : " + jurusan+ "<br />");
    %>
  </body>
</html>
