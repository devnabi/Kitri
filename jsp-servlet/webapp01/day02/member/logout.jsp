<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.Cookies" %>
<%
    response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
%>
<html>
<body>
로그아웃하였습니다.
<a href="/webapp01/day02/member/loginCheck.jsp">로그인 체크</a> <br>
<a href="/webapp01/day02/member/loginForm.jsp">로그인</a>
</body>
</html>