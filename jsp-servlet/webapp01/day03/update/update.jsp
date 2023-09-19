<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
        request.setCharacterEncoding("utf-8");

        String memberID = request.getParameter("memberID");
        String name = request.getParameter("name");

        // 1. JDBC 드라이브 로딩
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        int updateCount = 0;

        try {
            String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                    "useUnicode=true&characterEncoding=utf8";
            String dbUser = "root";
            String dbPass = "1234";

            // 2. DB Connection 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

            String updateQuery = "UPDATE member SET name = '" + name + "'WHERE memberid'";
            stmt.executeUpdate(updateQuery);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 6. 사용한 Statement 종료
            if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
            // 7. Connection 종료
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
%>

<html>
<head><title>이름 변경</title></head>
<body>
<%  if (updateCount > 0) { %>
<%= memberID %>의 이름을 <%= name %>(으)로 변경
<%  } else { %>
<%= memberID %> 아이디가 존재하지 않음
<%  } %>
</body>
</html>