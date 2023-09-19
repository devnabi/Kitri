<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.Cookies" %>
<%
    // 로그인여부 검사 로직(by Cookie)
    Cookies cookies = new Cookies(request);
    if (!cookies.exists("AUTH")) {
        response.sendRedirect(request.getContextPath() + "./loginForm.jsp");
    }
%>