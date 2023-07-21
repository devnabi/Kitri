package operations03;

public class Operations {

    public static void main(String[] args) {
        // 2023-07-20 연산자

        byte b = 100;
        int i = -b; // 산출결과는 int로 변환이 되어서 int에 대입

        int x = 5;
        int y = 1;
        System.out.println(x + y);

        System.out.println("JDK" + 3 + 3.0); // 문자열로 변환되어 순서대로 JDK33.0
        System.out.println(3 + 3.0 + "JDK"); // 순서대로 계산하면 6.0JDK

        double d = 0.1;
        float f = 0.1f;
        System.out.println(f == d); // false
        System.out.println((float)d == f); // true

    }
}
