<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
    <title>회원 관리</title>

    <style>
        .registerMamber {
            float: right;
        }
    </style>
</head>
<body>
    <form action="./login.jsp">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="memberId" size="25"></td>
            </tr>

            <tr>
                <td>비밀번호</td>
                <td><input type="text" name="password" size="25"></td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="로그인">
                    <a class="registerMamber" href="./memberInsertForm.jsp">회원가입</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>