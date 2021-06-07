<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body bgcolor="white">
    <%
        String name = request.getParameter("nama");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email"); 
        String kompetensi = request.getParameter("kompetensi"); 
        String hoby = "";

        for(int i=0;i<=5;i++) {
            String hobyy = request.getParameter("hoby" + i); 
            if(hobyy != null)
            {
                hoby += " " + hobyy;
            } 
        }
    %>
    <table border="1">
        <tr>
            <td colspan="2">DATA</td>
        </tr> 
        <tr>
            <td>Name :</td>
            <td><%=name%></td> 
        </tr>
        <tr>
            <td>Gender :</td> 
            <td><%=gender%></td>
        </tr> 
        <tr>
            <td>Email :</td>
            <td><%=email%></td>
        </tr>
        <tr>
            <td>Kompetensi :</td>
            <td><%=kompetensi%></td>
        </tr>
        <tr>
            <td>Hoby :</td>
            <td><%=hoby%></td> 
        </tr>
    </table>
</body>
</html>