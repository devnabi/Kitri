<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
    Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
    cookie.setMaxAge(60); // 1시간 유효기간
    response.addCookie(cookie);

    System.out.println("name의 Cookie유효기간" + cookie.getMaxAge());
%>
<html>
<head><title>쿠키생성</title></head>
<body>

<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"

</body>
</html>