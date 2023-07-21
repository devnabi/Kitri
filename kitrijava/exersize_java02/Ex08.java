package exersize_java02;

import java.util.Scanner;

public class Ex08 {

    public static void main(String[] args) {
        // Ex8 : while문과 Scanner를 이용해서 키보드로 입력된 데이터로 예금, 출금, 조회, 종료 기능을 제공하는 코드를 작성해보세요.
        // 프로그램을 실행하면 Result 같은 실행결과가 나와야 합니다. (Scanner의 nextLine( ) 메소드 사용)

        System.out.println("-------------------------------");
        System.out.println(" 1.예금 | 2.출금 | 3.잔고 | 4.종료 |");
        System.out.println("-------------------------------");

        Scanner sc = new Scanner(System.in);
        // 입력값 두번
        int i = sc.nextInt(); // 번호 선택
        String str1 = sc.nextLine(); // 답
        String str2 = sc.nextLine();
        String str3 = sc.nextLine();

        System.out.println("선택 : " + i);
        System.out.println(str1 + "");

        // 종료조건 걸기 : break
        while(true){
            if(i == 1){
                System.out.println("예금액 : " + str1);
            }
            if(i == 2){
                System.out.println("출금액 : " + str2);
            }
            if(i == 3){
                System.out.println("잔고 : " + str3);
            }
            if(i == 4){
                break;
            }
            System.out.println("프로그램 종료");
        } // while의 끝
    } // main의 끝
}
