<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.Cookies" %>
<%
    // id, pw가 같으면 로그인 성공 텍스트 보여주고 쿠키에 저장하기
    // 다르다면 로그인 실패 텍스트 보여주기
    String id = request.getParameter("id");
    String pw= request.getParameter("password");

    if (id.equals(pw)) {
        response.addCookie( Cookies.createCookie("AUTH", "", "/", 0) );
%>
<html>
<body>
로그인 성공!
<a href="/webapp01/day02/member/loginCheck.jsp">로그인 체크</a> <br>
<a href="/webapp01/day02/member/logout.jsp">로그아웃</a>
</body>
</html>

<%
} else {
%>

<html>
<body>
로그인 실패!
<a href="/webapp01/day02/member/loginForm.jsp">로그인</a>
</body>
</html>

<%
}
%>