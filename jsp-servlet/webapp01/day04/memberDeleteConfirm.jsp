<%@ page contentType = "text/html; charset=utf-8" %>
<!-- 로그인 여부 검사 -->
<%@ include file="./loginCheck.jsp" %>
<%
    String id = request.getParameter("id");
%>
<script>
    if ( confirm('정말 삭제하시겠습니까?') ) {
        location.href = '<%= request.getContextPath() %>/day04/memberDelete.jsp?id=<%= id %>';
    } else {
        location.href = '<%= request.getContextPath() %>/day04/memberList.jsp';
    }
</script>