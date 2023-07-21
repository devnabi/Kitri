package exersize_java01;

import java.util.Scanner;

public class Ex13 {

    public static void main(String[] args) {
        // Ex13 : 사용자로부터 키보드로 점수를 입력받아 점수가 60점 이상이면 “pass” 60점 미만이면 “fail” 을 출력하는 삼항 조건 연산자를 작성해보세요.
        // 3항 연산자 : 조건문 ? 참 : 거짓
        
        Scanner sc = new Scanner(System.in);

        String strScore = sc.nextLine(); // 점수를 입력받는 것이니까 int로 바꿔주기
        int score = Integer.parseInt(strScore);

        // --- your code here ---
        String str = (60 <= score) ? "pass" : "fail";
        System.out.println(str);
    }
}
