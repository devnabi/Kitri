<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Arrays" %>

<%
    request.setAttribute("name", "최범균");
%>

<html>
<head><title>EL Object</title></head>
<body>

요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성: ${requestScope.name}<br>
code 파라미터: ${param.code}
<c:set var = "vals" value= "aaa" />
<br>
<c:out value = "${vals}" />입니다2.
<br>
${vals}입니다3.
<br>
<c:set var = "name" value= "선생님" />
${name}입니다4.
<br>
${Arrays.asList(1, 2)}
</body>