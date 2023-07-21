package exersize_java01;

public class Ex06 {

    public static void main(String[] args) {
        // Ex6 : 문자열 “20230701”을 기본 타입으로 변환하려고 합니다. 반대로 정수형 20230701을 문자열로 변환하려면 어떻게 해야하는지 코드를 작성해보세요.

        // 1. 문자열을 기본 타입으로 변환
        String str = "20230701";
        int result = Integer.parseInt(str);
        System.out.println("문자열을 기본 타입으로 변환 = " + result);

        // 2. 정수형 20230701을 String으로 변환
        int i = 20230701;
        String str2 = String.valueOf(i);
        System.out.println("정수형을 String으로 변환 = " + str2);

    }
}
