<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.lang.Exception, java.sql.SQLException" %>

<!-- 로그인 여부 검사 -->
<%@ include file="./loginCheck.jsp" %>

<html>
<head>
    <title>JSP 회원관리</title>
</head>
<body>
    회원관리 리스트
<table border="1">
    <tr>
        <th>회원번호</th>
        <th>아이디</th>
        <th>이메일</th>
        <th>주소</th>
        <th>취미</th>
        <th></th>
    </tr>
<%
    // 1. JDBC드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    Exception exception = null;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
            "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";
        // 2. DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        // 3. Statement 생성
        stmt = conn.createStatement();

        // 4. 쿼리 실행
        String selectMemberList = "SELECT * FROM member4";
        rs = stmt.executeQuery(selectMemberList);

        // 5. 쿼리 실행 결과 출력
        while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("memberId") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("address1") + rs.getString("address2") %></td>
        <td><%= rs.getString("hobby") %></td>
        <td>
            <a href="<%= request.getContextPath() %>/day04/memberUpdateForm.jsp?id=<%= rs.getInt("id") %>">수정</a>
            <a href="<%= request.getContextPath() %>/day04/memberDelete.jsp?id=<%= rs.getInt("id") %>">삭제</a>
        </td>
    </tr>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 6. 사용한 Statement 종료
        if (rs != null) try { rs.close(); } catch (SQLException ex) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
    <tr>
        <td colspan="6">
            <a href="<%= request.getContextPath() %>/day04/logout.jsp" style="float: right;">로그아웃</a>
        </td>
    </tr>
</table>
</body>
</html>
