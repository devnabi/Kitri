<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    String memberId = request.getParameter("memberId");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String[] hobbies = request.getParameterValues("hobby");
    String hobbiesString = "";

    if (hobbies != null) {
        hobbiesString = String.join(", ", hobbies);
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

        String insertQuery = "INSERT INTO member4 (memberId, password, email, address1, address2, hobby) VALUES (?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, memberId);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        pstmt.setString(4, address1);
        pstmt.setString(5, address2);
        pstmt.setString(6, hobbiesString);

        pstmt.executeUpdate();  // 실제 insert문 실행
    } catch(Exception e) {
        e.printStackTrace();
        exception = e;
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>

<% if (exception == null) { // 회원가입 성공 %>
    <script>
        alert("회원가입 성공!");
        location.href = `./loginForm.jsp`
    </script>
<%
    } else { // 회원가입 실패 %>
        회원가입 실패. 관리자에게 문의하세요.<br>
        오류내용 : <%= exception.getMessage()%>
<%    }%>
