package exersize_java01;

import java.util.Scanner;

public class Ex12 {

    public static void main(String[] args) {
        // Ex12 : 키보드로 아이디와 패스워드를 입력 받습니다. 입력 조건으로 이름은 문자열이고 패스워드는 정수입니다(패스워드는 int 타입으로 변환).
        // 입력된 내용을 비교해서 아이디가 “kitri”이고 패스워드가 12345라면 “로그인 성공”을 출력하고 그렇지 않으면 “로그인 실패”를 출력하도록 프로그램을 만들어 보세요.

        Scanner scanner = new Scanner(System.in);

        System.out.print("아이디:");
        String name = scanner.nextLine();

        System.out.print("패스워드:");
        String strPassword = scanner.nextLine();
        int password = Integer.parseInt(strPassword);

        // 이후 로그인 성공인지 실패인지를 체크하는 조건문 작성
        if((name.equals("kitri")) && password == 12345) {
            System.out.println("로그인 성공");
        }
        else {
            System.out.println("로그인 실패");
        }
        // --- Your code here! ---
    }
}
