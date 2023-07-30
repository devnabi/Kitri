package exersize_java02;

import java.util.Scanner;

public class Ex12 {

    public static void main(String[] args) {
        // Ex12 : * 을 n개 출력하되 w개마다 줄 바꿈을 하는 프로그램을 만들어 보세요.
        // *를 n개 출력하되 w개마다 줄을 바꿔서 출력합니다.
        // n값: 14 // <- 14는 사용자가 입력
        // w값: 5 // <- 5는 사용자가 입력
        // *****
        // *****
        // ****

        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int w = sc.nextInt();
        System.out.println("n값 : " + n);
        System.out.println("w값 : " + w);

        for(int i = 0; i < n; i++){
            if(i % w == 0){
                System.out.println();
            }
            System.out.printf("*");
        } // for의 끝

        // 호출
        // Star(14, 5);
    } // main의 끝

//    // 메서드 작성
//    public static void Star(int n, int w){
//        for(int i = 1; i <= n; i++){
//            if(i % w == 1){
//                System.out.printf("%n");
//            }
//            System.out.printf("*");
//        } // for의 끝
//    } // 메서드의 끝
}
