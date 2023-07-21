package exersize_java02;

public class Ex05 {

    public static void main(String[] args) {
        // Ex5 : 3개의 정수값 가운데 최댓값을 구하여 출력하는 int max3(int a, int b, int c) 메소드를 작성해주세요.
        // System.out.println(max(1, 3, 5)); 최댓값 : 5가 출력되어야 한다.

        // 매서드 호출
        System.out.println(intMax(2, 8, 3)); // 8이 나와야 한다.

    } // main의 끝

    // 매소드 작성
    public static int intMax(int a, int b, int c){
        if(b < a && a > c){
            return a;
        }
        else if (a < b && b > c){
            return b;
        }
        else {
            return c;
        }

    } // 매소드의 끝
}
