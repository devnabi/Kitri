<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    String memberId = request.getParameter("memberID");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";
        // 2. DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        // INSERT INTO member VALUES('abcd')
        String insertQuery = "INSERT INTO member VALUES('" + memberId + "', '" + password +"', '" + name +"', '"+ email +"')";

        stmt.executeUpdate(insertQuery);  // 실제 insert문 실행
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
MEMBER 테이블에 새로운 레코드를 삽입했습니다.