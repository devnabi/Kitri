<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, java.io.PrintWriter" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    // 모든 파라미터를 가져옵니다.
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

    // JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    int updateCount = 0;
    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";

        // DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        // 멤버 정보를 조회하는 SQL 쿼리
        String selectQuery = "SELECT * FROM member4 WHERE memberId = ?";
        pstmt = conn.prepareStatement(selectQuery);
        pstmt.setString(1, memberId);

        rs = pstmt.executeQuery();

        // 아이디가 존재하면 정보를 수정합니다.
        if (rs.next()) {
            // 멤버 정보를 수정하는 SQL 쿼리
            String updateQuery = "UPDATE member4 SET password = ?, email = ?, address1 = ?, address2 = ?, hobby = ? WHERE memberId = ?";

            pstmt = conn.prepareStatement(updateQuery);
            pstmt.setString(1, password);
            pstmt.setString(2, email);
            pstmt.setString(3, address1);
            pstmt.setString(4, address2);
            pstmt.setString(5, hobbiesString);
            pstmt.setString(6, memberId);

            // SQL 실행 및 업데이트된 행의 수를 반환합니다.
            updateCount = pstmt.executeUpdate();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 사용한 리소스를 종료합니다.
        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
%>
<html>
<head>
    <title>회원 정보 수정 결과</title>
</head>
<body>
<% if (updateCount > 0) { %>
<%= memberId %>의 정보를 변경했습니다.
<% } else { %>
<%= memberId %>의 아이디가 존재하지 않습니다.
<% } %>
</body>
</html>
