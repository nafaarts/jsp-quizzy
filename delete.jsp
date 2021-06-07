<%@page import="java.sql.*" %>
<%
    if(session.getAttribute("status_login") != "TRUE"){
        response.sendRedirect("login.jsp");
    }

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_quiz_pjr", "belajarjsp", "");
        Statement stm = koneksi.createStatement();
        
        String sql_delete = "DELETE FROM tb_quiz WHERE id_quiz = " + request.getParameter("id");
        stm.executeUpdate(sql_delete); 
        out.println(sql_delete);
        response.sendRedirect("dashboard.jsp?response=deleted");
    } catch (Exception e) {
        out.println("Kesalahan : " + e);
    } 
%>