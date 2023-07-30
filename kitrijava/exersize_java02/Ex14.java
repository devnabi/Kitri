package exersize_java02;

public class Ex14 {

    public static void main(String[] args) {
        // Ex14 : n단의 숫자 피라미드를 출력하는 메소드를 작성하세요.
        // [5단 예시]
        //	  1
        //   222
        //  33333
        // 4444444
        //555555555

        // 호출
        Numpyramid(5);
    } // main의 끝

    // 메서드 작성
    public static void Numpyramid(int n){
        // 1. 먼저 1부터 5까지 출력하는 반복문을 쓰기
        // 2. 공백 차감하는 반복문 쓰기
        for(int i = 1; i <= n; i++){
            for(int j = n - 1 ; j >= i; j--){
                System.out.printf(" ");
            }
            for(int k = 1; k < i; k++){
                System.out.printf("%d", i);
                System.out.printf("%d", i);
            }
            System.out.println(i);
        } // for의 끝
    } // 메서드의 끝
}
