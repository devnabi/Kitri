<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import="test01.JspServletTest1" %>
<%@ page import="test01.JspServletTest2" %>

<%
    JspServletTest1 jspServletTest1 = new JspServletTest1();
    String hello = jspServletTest1.getHello();

    JspServletTest2 jspServletTest2 = new JspServletTest2();
    String hello2 = jspServletTest2.getHello2();
%>

<html>
<body>
Java코드 실행 확인 <%= hello %> <br>
Java코드 실행 확인2 <%= hello2 %>
</body>
</html>