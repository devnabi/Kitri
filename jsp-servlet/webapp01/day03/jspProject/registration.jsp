<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.lang.Exception" %>
<%@ page import="java.sql.*" %>

<%
        String nickname = request.getParameter("nickname");
        String email = request.getParameter("email");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String[] hobbies = request.getParameterValues("hobby");
        String hobbiesString = "";

        // 1. JDBC 드라이버 로딩
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            String jdbcDriver = "jdbc:mysql://localhost:3306/jspproject01?" +
                    "useUnicode=true&characterEncoding=utf8";
            String dbUser = "root";
            String dbPass = "1234";
            // 2. DB connection 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

            String insertQuery = "INSERT INTO user(nickname, email, address, hobby) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, nickname);
            pstmt.setString(2, email);
            pstmt.setString(3, address1 + address2);

            if (hobbies != null && hobbies.length > 0) {
                hobbiesString = String.join(", ", hobbies);
            }
            pstmt.setString(4, hobbiesString);

            pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
            if (conn != null) try { conn.close(); } catch (SQLException e) {}
        }
%>
user 테이블에 새로운 레코드를 삽입했습니다.