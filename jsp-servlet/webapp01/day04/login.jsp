<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.Cookies" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import = "java.sql.*" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    String memberId = request.getParameter("memberId");
    String password = request.getParameter("password");

    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    boolean isLoginSuccess = false;
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

        // 4. 쿼리 실행(로그인 성공여부 로직)
        String selectLoginQuery = "SELECT * FROM member4 WHERE memberId = '" + memberId + "' AND password = '" + password + "'";
        rs = stmt.executeQuery(selectLoginQuery);

        // 5. 쿼리 실행 결과
        if (rs.next()) {    // 파라미터로 주어진 아이디와 패스워드가 DB에 존재한다면 true
            isLoginSuccess = true;
        }
    } catch (Exception e) {
        e.printStackTrace();
        exception = e;
    } finally {
        // 6. 사용한 Statement 종료
        if (rs != null) try { rs.close(); } catch (SQLException ex) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
<%
    if (isLoginSuccess) {   // 로그인이 성공한다면
        response.addCookie(Cookies.createCookie("AUTH", memberId, "/", 3600));  // 쿠키설정
        response.sendRedirect(request.getContextPath() + "/day04/memberList.jsp");
    } else {                // 로그인이 실패한다면
%>
로그인이 실패했습니다.<br>
실패사유: <%= exception != null ? exception.getMessage() : "일치하는 아이디와 패스워드가 없습니다." %> <br>
<a href="<%= request.getContextPath() %>./loginForm.jsp">다시 로그인</a>
<%
    }
%>