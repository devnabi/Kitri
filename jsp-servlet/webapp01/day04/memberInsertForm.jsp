<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
    <title>회원 관리</title>
</head>
<body>
    <form action="./memberInsert.jsp" method="post">
        <table border="1">
            <tr>
                <td>아이디 : </td>
                <td><input type="text" name="memberId" size="25"></td>
            </tr>

            <tr>
                <td>비밀번호 : </td>
                <td><input type="password" name="password" size="25"></td>
            </tr>

            <tr>
                <td>이메일 : </td>
                <td><input type="text" name="email" size="25"></td>
            </tr>

            <tr>
                <td>기본주소 : </td>
                <td><input type="text" name="address1" size="25"></td>
            </tr>

            <tr>
                <td>상세주소 : </td>
                <td><input type="text" name="address2" size="25"></td>
            </tr>

            <tr>
                <td>취미 : </td>
                <td>
                    <input type="checkbox" name="hobby" value="운동"/>운동
                    <input type="checkbox" name="hobby" value="음악"/>음악
                    <input type="checkbox" name="hobby" value="여행"/>여행
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="가입하기" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>