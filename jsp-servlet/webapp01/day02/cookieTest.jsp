<%@ page contentType = "text/html; charset=utf-8"%>
<%
    Cookie cookie = new Cookie("test1", "cookie1");
    response.addCookie(cookie);
%>
test1 쿠키생성
<br>

<%
    Cookie cookie2 = new Cookie("test2", "cookie2");
    response.addCookie(cookie2);
%>
test2 쿠키생성