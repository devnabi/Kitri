package exersize_java01;

public class Ex02 {

    public static void main(String[] args) {
        // Ex2 : 다음의 코드에서 변수 a와 b의 값을 서로 교환하기 위해 코드를 추가해주세요.

        int a = 10;
        int b = 20;
        int c; // 빈 변수

        c = a;
        a = b;
        b = c;
        System.out.println("a = " + a);
        System.out.println("b = " + b);

    }
}
