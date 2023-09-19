<%@ page import="java.util.Map" %>
<%@ page contentType = "text/html; charset=utf-8"%>
<html>
<head><title>폼 생성</title></head>
<body>

<form action="/webapp01/day01/viewParameter01.jsp01.jsp" method="get">
    이름: <input type="text" name="name" size="10"> <br>
    주소: <input type="text" name="address" size="30"> <br>
    취미: <input type="text" name="hobby" size="15"> <br>
    좋아하는 동물:
    <input type="checkbox" name="pet" value="dog">강아지
    <input type="checkbox" name="pet" value="cat">고양이
    <input type="checkbox" name="pet" value="pig">돼지
    <br>
    <input type="submit" value="전송">
</form>
</body>
</html>