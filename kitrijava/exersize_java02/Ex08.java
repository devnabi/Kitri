package exersize_java02;

import java.util.Scanner;

public class Ex08 {

    public static void main(String[] args) {
        // Ex8 : while문과 Scanner를 이용해서 키보드로 입력된 데이터로 예금, 출금, 조회, 종료 기능을 제공하는 코드를 작성해보세요.
        // 프로그램을 실행하면 Result 같은 실행결과가 나와야 합니다. (Scanner의 nextLine() 메소드 사용)

        // 예금액 - depositAmount
        // 출금액 - withdrawalAmount
        // 잔고 - accountBalance

        boolean run = true;
        int balance = 0; // 잔고
        String depositAmount = ""; // 예금액
        String withdrawalAmount = ""; // 출금액

        Scanner sc = new Scanner(System.in);

        // 종료조건 걸기 : break;
        while (run) {
            System.out.println("-------------------------------------");
            System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료");
            System.out.println("-------------------------------------");
            System.out.printf("선택 : ");
            String choice = sc.nextLine();
            if(choice.equals("1")){
                System.out.printf("예금액 : ");
                String str = sc.nextLine();

                depositAmount = str;
                int de = Integer.parseInt(depositAmount); // 예금
                balance += de;
                continue;
            }
            if (choice.equals("2")) {
                System.out.printf("출금액 : ");
                String str = sc.nextLine();

                withdrawalAmount = str;
                int wi = Integer.parseInt(withdrawalAmount); // 출금
                balance -= wi;
                continue;
            }
            if (choice.equals("3")) {
                System.out.println("잔고 : " + balance);
            }
            if(choice == "4"){
                break;
            } //--- write your core here ---
        } // while의 끝
        System.out.println("프로그램 종료"); // while문을 빠져나오면 출력하는 것
    } // main의 끝
}
