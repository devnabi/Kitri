package exersize_java02;

public class Ex04 {

    public static void main(String[] args) {
        // Ex4 : 정수 a, b를 포함하여 그 사이의 모든 정수의 합을 구하여 반환하는 메소드를 작성하세요.

        intSum(1, 5); // 그 사이의 모든 정수의 합? 1에서부터 5까지의 합 : 1 + 2 + 3 + 4 + 5 = 15가 출력되어야 한다.
    } // main의 끝

    // 매소드 작성
    public static void intSum(int a, int b){
        int sum = 0;
        for(int i = a; i <= b; i++){
            sum = sum + i;
        }
        System.out.println(sum);
    } // 매소드의 끝
}
