<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");

    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt = null;

    Exception exception = null;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";
        // 2. DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        String insertQuery = "DELETE FROM member4 WHERE id = ?";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, id);

        pstmt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        exception = e;
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
<% if (exception == null) {    // 회원정보가 성공적으로 삭제 %>
<script>
    alert('회원가입이 성공적으로 삭제되었습니다.');
    location.href = '<%= request.getContextPath() %>/day04/memberList.jsp';
</script>
<%  } else {                   // 회원정보 수정 실패 %>
회원삭제가 실패하였습니다. 관리자에게 문의하세요. <br>
오류내용: <%= exception.getMessage() %>
<% } %>
