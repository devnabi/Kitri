<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
<form accept-charset="UTF-8" action="/webapp01/day03/jspProject/registration.jsp" method="post">
    <table>
        <tr>
            <td>id</td>
            <td><input type="text" name="userID" size="10"></td>
        </tr>

        <tr>
            <td>닉네임</td>
            <td><input type="text" name="nickname" size="10"></td>
        </tr>

        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" size="10"></td>
        </tr>

        <tr>
            <td>주소1</td>
            <td><input type="text" name="address1" size="10"></td>
        </tr>
        <tr>
            <td>상세 주소</td>
            <td><input type="text" name="address2" size="10"></td>
        </tr>

        <tr>
            <td>취미</td>
            <td>
                <label for="hobby1">게임</label>
                <input type="checkbox" id="hobby1" name="hobby" value="Game">
            </td>
            <td>
                <label for="hobby2">운동</label>
                <input type="checkbox" id="hobby2" name="hobby" value="Exercise">
            </td>
            <td>
                <label for="hobby3">영화/애니</label>
                <input type="checkbox" id="hobby3" name="hobby" value="Movies/Anime">
            </td>
            <td>
                <label for="hobby4">코딩테스트 연습</label>
                <input type="checkbox" id="hobby4" name="hobby" value="Coding Test Practice">
            </td>
        </tr>
        <tr>
            <td colspan="4"><input type="submit" value="가입"></td>
        </tr>
    </table>
</form>
</body>
</html>