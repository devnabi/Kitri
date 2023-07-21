package exersize_java01;

public class Ex09 {

    public static void main(String[] args) {
        // Ex9 : 다음 코드에서 컴파일 에러가 발생하는 위치와 이유를 설명해보세요. 그리고 컴파일 에러를 없앨 수 있도록 코드를 고쳐보세요.

        // byte b = 5;
        // b = -b;
        // int result = 10 / b;
        // System.out.println(result);

        // 에러나는 이유 : -은 단항 연산자다. 산출결과는 int로 저장해야하기때문에 에러가 난다.

        // 고친 답
        byte b = 5;
        int i = -b;
        int result = 10 / b;
        System.out.println(result);
    }
}
