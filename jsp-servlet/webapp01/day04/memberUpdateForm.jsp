<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    Exception exception = null;

    String memberId = null;
    String password = null;
    String email = null;
    String address1 = null;
    String address2 = null;
    String hobby = null;

    Boolean is게임Checked = false;
    Boolean is운동Checked = false;
    Boolean is코딩테스트연습Checked = false;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";
        // 2. DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        stmt = conn.createStatement();

        String selectMember = "SELECT * FROM member4 WHERE id = " + id;
        rs = stmt.executeQuery(selectMember);

        if (rs.next()) {
            memberId = rs.getString("memberId");
            password = rs.getString("password");
            email = rs.getString("email");
            address1 = rs.getString("address1");
            address2 = rs.getString("address2");
            hobby = rs.getString("hobby");
        }
        if (hobby != null && !hobby.equals("")) {
            is게임Checked = hobby.contains("게임");
            is운동Checked = hobby.contains("운동");
            is코딩테스트연습Checked = hobby.contains("코딩테스트 연습");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ex) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
<html>
<head>
    <title>JSP 회원관리</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/day04/memberUpdate.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>" />
    <table border="1">
        <tr>
            <td>아이디: </td>
            <td><input type="text" name="memberId" size="25" value="<%= memberId %>" /></td>
        </tr>
        <tr>
            <td>암호: </td>
            <td><input type="password" name="password" size="25" value="<%= password %>" /></td>
        </tr>
        <tr>
            <td>이메일: </td>
            <td><input type="text" name="email" size="25" value="<%= email %>" /></td>
        </tr>
        <tr>
            <td>기본주소: </td>
            <td><input type="text" name="address1" size="25" value="<%= address1 %>" /></td>
        </tr>
        <tr>
            <td>상세주소: </td>
            <td><input type="text" name="address2" size="25" value="<%= address2 %>" /></td>
        </tr>
        <tr>
            <td>취미: </td>
            <td>
                <input type="checkbox" name="hobby" value="게임" <%= is게임Checked ? "checked" : "" %>/>게임
                <input type="checkbox" name="hobby" value="운동" <%= is운동Checked ? "checked" : "" %>/>운동
                <input type="checkbox" name="hobby" value="코딩테스트 연습" <%= is코딩테스트연습Checked ? "checked" : "" %>/>코딩테스트 연습
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="수정" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>