<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<html>
<head><title>회원 목록</title></head>
<body>

MEMBER 테이블의 내용
<table width="100%" border="1">
    <tr>
        <td>이름</td><td>아이디</td><td>이메일</td>
    </tr>
    <%
        // 1. JDBC 드라이버 로딩
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                    "useUnicode=true&characterEncoding=utf8";
            String dbUser = "root";
            String dbPass = "1234";

            String query = "SELECT * FROM member ORDER BY memberid";

            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

            // 3. Statement 생성
            stmt = conn.createStatement();

            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);

            // 5. 쿼리 실행 결과 출력
            while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("memberid") %></td>
        <td><%= rs.getString("email") %></td>
    </tr>
    <%
            }
        } catch(SQLException e) {
            out.println(e.getMessage());
            e.printStackTrace();
        } finally {
            // 6. 사용한 Statement 종료
            if (rs != null) try { rs.close(); } catch(SQLException e) {}
            if (stmt != null) try { stmt.close(); } catch(SQLException e) {}

            // 7. 커넥션 종료
            if (conn != null) try { conn.close(); } catch(SQLException e) {}
        }
    %>
</table>

</body>
</html>