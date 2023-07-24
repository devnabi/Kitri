package Reference_type05;

import java.util.Scanner;

public class ReferenceType02 {

    public static void main(String[] args) {
        // 2023-07-24 다차원 배열

        // 다차원 배열 : 배열이 2개 이상있는 배열
        int[][] mathScores = new int[2][3]; // 6번

        Scanner sc = new Scanner(System.in);

        // mathScores 다차원 배열을 전체 조회하는 반복문
        for(int i = 0; i < mathScores.length; i++){
            for(int j = 0; j < mathScores[0].length; j++){
                System.out.println((3*i + j+1) + "번째 학생의 수학 점수 : " + mathScores[i][j]);
                mathScores[i][j] = sc.nextInt(); // 사용자에게 입력을 받기
            }
        }

        // 메모리적인 차이 이해하기
        String[] strArr = new String[3];
        strArr[0] = "Java";
        strArr[1] = "Java";
        strArr[2] = new String("Java");

        // 배열 복사
        int[] oldIntArr = {1, 2, 3};
        int[] newIntArr = new int[5];

        // old를 new에 복사
        for(int i = 0; i < oldIntArr.length; i++){
            newIntArr[i] = oldIntArr[i];
            System.out.println("복사된 배열 : " + newIntArr[i]);
        }

        // 기존 for문
        int[] scores2 = {100, 50, 70, 80, 90};

        for(int i = 0; i < scores2.length; i++){
            System.out.println("기존 for문 : " + scores2[i]);
        }

        // 향상된 for문 : ( 변수 만들기 : 배열이름 ) / 루프 카운터 변수와 중감식은 사용하지 않는다.
        for(int scoresArr : scores2){
            System.out.println("향상된 for문 : " + scoresArr);
        }
    } // main의 끝
}
