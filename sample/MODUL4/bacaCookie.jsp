<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%
            Cookie dafCookie[] = request.getCookies(); 
            if (dafCookie != null) {
                Cookie cookie;
                out.println("<TABLE BORDER=\"1\">"); 
                out.println("<TR><TH>Cookie</TH><TH>Isi </TH></TR>");
                for (int i=0; i < dafCookie.length; i++) {
                    cookie = dafCookie[i];
                    out.println("<TR><TD>" + cookie.getName() + "</TD><TD>" + cookie.getValue() + "</TD></TR>");
                } 
                out.println("</TABLE>"); 
            } else {
                out.println("tidak ada Cookie");
            }
        %>
    </body>
</html>