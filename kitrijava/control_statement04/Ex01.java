package control_statement04;

public class Ex01 {

    public static void main(String[] args) {
        // 2023-07-21 조건문과 반복문

        // if : 조건이 true면 실행, false면 실행하지 않고 건너뛴다.
        // if-else : 조건을 더 주고 싶을 때 사용한다.
        // if와 switch 차이 : switch는 break를 붙여주지 않으면 다 실행되서 붙여줘야 한다. if는 조건식이 true인지 false인지 보고 실행, switch는 변수값을 보고 같으면 실행한다.
        // while : 조건식에 종료조건이 있어야 된다.
        // do-while : while의 조건이 false더라도 앞에 do가 실행이 무조건 된다.

        // 조건문
        int score = 90;

        if(score >= 90){
            System.out.println("등급은 A입니다.");
        }
        else if (90 > score && score >= 80) {
            System.out.println("등급은 B입니다.");
        }
        else {
            System.out.println("등급은 C입니다.");
        }

        // 반복문 : 1~10까지 출력
        int num = 10;
        // for(초기화식,; 조건식; 증감식;){실행문}
        for(int i = 1; i <= num; i++){
            System.out.println(i);
        } // for의 끝

        // 반복문을 사용해서 1~100까지의 합을 구하기
        int sum = 0;
        for(int i = 1; i <= 100; i++){
            sum = sum + i; // sum에다가 i가 증가하는 그 값을 대입한다.
        }
        System.out.println("1부터 100까지의 합 = "+ sum); // 5050

        // 중첩 for문 : 2단~9단 구구단 출력하기
        // 2단부터 9단까지만 나오게 만들기 i가 dan (i * 1) (i * 2) 2단부터 1씩 늘어나게 해서 곱하도록 만들기 ...
        // j가 1부터 1씩 늘어나는 거 (2 * j)
        for(int i = 2; i <= 9; i++){
            for(int j = 1; j <= 9; j++){
                System.out.println(i + " * " + j + " = "+ i * j);
            }
        }
    } // main의 끝
}
