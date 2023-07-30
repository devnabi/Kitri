package exersize_java02;

public class Ex13 {

    public static void main(String[] args) {
        // Ex13 : n단의 피라미드를 출력하는 메소드를 작성하세요.
        // [4단 예시]
        //	 *
        //  ***
        // *****
        //*******

        // 1단일 때 >> *1개
        // 2단일 때 >> *3개
        // 3단일 때 >> *5개
        // 4단일 때 >> *7개
        // 일단은 1번돌 때마다 *이 2개씩 증가하는 반복문 해보기?

        // 1단일 때 >> 왼 공백이 3개
        // 2단일 때 >> 왼 공백이 2개
        // 3단일 때 >> 왼 공백이 1개
        // 4단일 때 >> 왼 공백이 0개
        // 오른쪽도 마찬가지. 왼 공백개수 * 2를 한 것이 한줄 총 공백 수
        // 공백이 줄어드는 반복문 해보기

        // 호출
        pyramid(4);
    } // main의 끝

    // 메서드 작성
    public static void pyramid(int n){
        for(int i = 0; i < n; i++){
            for(int k = n - 1; k > i; k--){
                System.out.printf(" ");
            } // 공백 1개씩 없애기

            for(int j = 0; j < i; j++){
                System.out.printf("**");
            } // *이 2개씩 증가하는 반복문
            System.out.println("*"); // 개행하며 n단까지 반복 출력
        } // for의 끝
    }
}
