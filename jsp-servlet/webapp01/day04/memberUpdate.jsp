<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String memberId = request.getParameter("memberId");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String[] hobbies = request.getParameterValues("hobby");
    String hobbiesString = "";

    if (hobbies != null && hobbies.length > 0) {
        hobbiesString = String.join(",", hobbies);
    }

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

        String updateQuery = "update member4 set memberId = ?, password = ?, email = ?, address1 = ?, address2 = ?, hobby = ? where id = ?";
        pstmt = conn.prepareStatement(updateQuery);
        pstmt.setString(1, memberId);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        pstmt.setString(4, address1);
        pstmt.setString(5, address2);
        pstmt.setString(6, hobbiesString);
        pstmt.setInt(7, Integer.parseInt(id));

        pstmt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        exception = e;
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
<% if (exception == null) { // 회원정보가 성공적으로 수정 %>
<script>
    alert('회원정보가 성공적으로 수정되었습니다.');
    location.href = '<%= request.getContextPath() %>/day04/memberList.jsp';
</script>
<% } else { %>
회원정보 수정이 실패하였습니다. 관리자에게 문의하세요. <br>
오류내용: <%= exception.getMessage() %>
<% } %>