<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<body>
<h1>jsp 공부 1</h1>

<!--스크립트릿 : Java코드 작성-->
<%
    Date now = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String strNowDate = simpleDateFormat.format(now);
%>

<%
    String bookTitle = "안녕하세요.";
    String author = "홍길동";
%>
<jsp:include page="header01.jsp" flush="true"></jsp:include>
<br>

<%!
    public int sum(int a, int b) {
        return a + b;
    }
%>

1 + 2 = <%= sum(1, 2) %>
<br>

<!--표현식 : =을 빼면 안된다. 변수를 쓸 수 있게 해주는 것-->
<%= bookTitle + "_" + author %>

<br>
<!--YYYY-MM-DD HH:mm:ss-->
<%= "현재 시각 : " + strNowDate %>
</body>
</html>