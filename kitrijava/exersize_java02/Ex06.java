package exersize_java02;

public class Ex06 {

    public static void main(String[] args) {
        // Ex6 : for문을 이용해서 다음과 같이 * 를 출력하는 코드를 작성해보세요.
        // *
        // **
        // ***
        // ****

        for(int i = 1; i <= 5; i++){
            for(int j = 1; j < i; j++){
                System.out.printf("*");
            }
            System.out.println("*");
        } // for의 끝
    } // main의 끝
}
