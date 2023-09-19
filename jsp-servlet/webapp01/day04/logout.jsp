<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.Cookies" %>
<%
    // 1. AUTH 쿠키삭제
    response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));

    // 2. 로그인 페이지로 이동
    response.sendRedirect(request.getContextPath() + "/day04/loginForm.jsp");

%>

<script>
    alert("로그아웃이 성공적으로 되었습니다.");
    location.href = `./loginForm.jsp`;
</script>
