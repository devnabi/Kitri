<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
    <title>homepage</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2">
            <jsp:include page="/module/top.jsp" flush="false" />
        </td>
    </tr>

    <tr>
        <td>
            <jsp:include page="/module/left.jsp" flush="false" />
        </td>
        <td>
            서브2페이지
        </td>
    </tr>

    <tr>
        <td colspan="2">
            <jsp:include page="/module/bottom.jsp" flush="false" />
        </td>
    </tr>
</table>
</body>
</html>