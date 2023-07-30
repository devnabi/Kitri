package exersize_java02;

import java.util.Scanner;

public class Ex15 {

    public static void main(String[] args) {
        // Ex15 : 1~100까지 랜덤 숫자 맞히기 게임
        // <게임 규칙>
        //
        // * 임의의 숫자를 생성한다. (1~100의 임의의 랜덤 정수)
        // * 다음 과정을 10회 반복한다.
        //    1. 플레이어로부터 숫자를 입력받는다.
        //    2. 입력 받은 숫자가 임의의 숫자와 일치한다면 축하 메시지를 출력하고 반복문 탈출
        //    3. 입력 받은 숫자가 임의의 숫자보다 작다면 작다는 메시지 출력
        //       입력 받은 숫자가 임의의 숫자보다 크다면 크다는 메시지 출력
        //  10번의 기회가 지날 동안 숫자를 맞추지 못하면 게임은 종료된다.

        Scanner sc = new Scanner(System.in);

        // 임의의 랜덤숫자
        int randomNum = (int)(Math.random() * 100) + 1;

        // 기회
        int turn = 0;

        // 1. 플레이어로부터 숫자 입력 받기

        // false일 때 까지 반복하라는 조건을... 뭐가 10이하일 때까지 반복해.
        while (++turn <= 10) {
            int num = sc.nextInt();
            if(num == randomNum){
                System.out.println("정답! 축하합니다~");
                return;
            }
            if(num < randomNum){
                System.out.println("입력하신 숫자는 정해진 숫자보다 작습니디.");
            }
            if(num > randomNum){
                System.out.println("입력하신 숫자는 정해진 숫자보다 큽니다.");
            }
        } // while의 끝
    } // main의 끝
}
