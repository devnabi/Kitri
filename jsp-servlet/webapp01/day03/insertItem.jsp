<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.lang.Exception" %>
<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt1 = null;
    PreparedStatement pstmt2 = null;

    boolean isSuccess = true;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/jsptestdb01?" +
                "useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";
        // 2. DB connection 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        // 3. transaction 생성
        conn.setAutoCommit(false);

        // 4. insert문 생성
        String insertQuery1 = "insert into MEMBER values (?, ?, ?, ?)";
        pstmt1 = conn.prepareStatement(insertQuery1);
        pstmt1.setString(1, id);
        pstmt1.setString(2, "1234");
        pstmt1.setString(3, "홍길동3");
        pstmt1.setString(4, "hongildong3@naver.com");
        pstmt1.executeUpdate();

        // 5. 의도적인 exception or error 생성
        if (id == null || id.equals(""))
            throw new Exception("익셉션 발생");

        // 6. insert2문 생성


        // 7. 트랜잭션 실행 commit
        conn.commit();
    } catch (SQLException e) {
        isSuccess = false;

        System.out.println("SQLException 발생");
        e.printStackTrace();
    } catch (Exception e) {
        isSuccess = false;

        System.out.println("Exception 발생");

        conn.rollback();

        e.printStackTrace();
    } finally {
        if (pstmt1 != null) try { pstmt1.close(); } catch (SQLException ex) {}
        if (pstmt2 != null) try { pstmt2.close(); } catch (SQLException ex) {}
        if (conn != null) try { conn.close(); } catch (SQLException ex) {}
    }
%>
<% if (isSuccess) { %>
데이터가 성공적으로 들어감
<% } else { %>
에러가 발생하였음
<% } %>


