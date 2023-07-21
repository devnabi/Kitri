package variables_type01;

public class Variables02 {

    public static void main(String[] args) {
        // 2023-07-20 변수와 타입(2)

        // 리터럴 : 'A' : 문자 리터럴 / "A" : 문자열 리터럴 / 100 : 숫자 리터럴 / 10.0 : 실수 리터럴
        // 정수보다 실수가 더 큰 이유 : 표현하는 방식이 다르기때문이다.
        // 자동 형변환의 순서가 다르다. 용량이 작은 순으로 형변환하게 된다. int에서 byte로 형변환을 하지 못하게 되어있다.

        // 내가 질문한 것 : 값을 초기화해주지 않고 변수 선언만 하면 기본형은 0으로 자동초기화 된다는 거로 아는데 그럼 0이 메모리에 저장되는 건가요?
        // 그렇지 않다. 그것은 인스턴스 변수를 말하는 것이고 지금 여기서 말하는 변수는 다르다. 자동초기화는 객체를 배울 때 나온다.
        // 변수라는 게 값을 저장할 수 있고 메모리에 이름을 정해주는 것이니까 다르겠당...
        // int a;
        // System.out.println(a); 자동초기화되지 않아 에러가 난다.

        // 타입들 써보기
        byte b = 127; // 범위를 벗어나면 에러
        long l = 300000000000L; // L을 붙여주지 않으면 정수로 인식하여 에러
        char c = 'A'; // 작은 따옴표
        char c2 = 65; // 저장할 때 문자로 받는다.
        int i = '가'; // 저장할 때 숫자로 받는다.
        double d = 17.10;
        float f = 10.00f;
        System.out.println(b);
        System.out.println(c); // 문자 A
        System.out.println(c2); // 문자 A가 출력된다. char는 표현하는 방식이 다른 거라고 보면 된다.
        System.out.println(i); // 44032 / 정수일 때는 정수로 변환하여 표현한다.
        System.out.println(d);
        System.out.println(f);

        // 이스케이프
        String str = "H"; // H가 출력된다. 하지만 "H" 쌍따옴표를 붙인 것을 나오게 하고 싶을 수 있다. 이 때 이스케이프를 쓴다.
        String str2 = "\"H\""; // "H" / 이스케이프
        c = 'H';
        System.out.println(c);
        System.out.println(str);
        System.out.println(str2);

        // 자동 형변환 : 큰 것에서 작은 것으로 형변환
        byte byteType = 20;
        int intType = byteType;

        // 강제 형변환 : 작은 타입에서 큰 타입으로 변환하고 싶을 때
        // 큰 것에서 작은 것이 되라고 하면 결국 잘릴 수 밖에 없다. 그렇기 때문에 값 손실이 일어나고 잘린대로 출력이 된다.
        int intVal = 1000;
        byte byteVal = (byte)intVal;
        System.out.println(byteVal); // -24가 출력 / 값 손실이 일어나기때문에 항상 강제 형변환은 조심해서 쓰자.

        // 엥?
        byte x = 10;
        byte y = 20;
        int result = x + y; // 이유는 노션에서 확인
        // byte result = x + y; // 에러: 정수타입으로 연산이 나온다.

        // int와 long으로 이해를 해보자. long이 크다. long으로 따라가자.
//        byte b2 = 10;
//        int i2 = 100;
//        lomg l2 = 1000L;

        // 실수와 정수 연산
        int a = 1;
        int a2 = 2;
        double result2 = (double) a / a2;
        System.out.println(result2); // 0.5 / a가 double타입으로 형변환을 해줬고 double이 더 크기때문에 실수/실수의 답이 나온다.

        // 정수 + 정수 = 정수 / 정수 + 문자열 = 정수를 문자열로 바꿔서 연산한다.
        System.out.println(1+ "1");
        System.out.println(1+ 2 + "2");
        System.out.println("7"+ ( 1 + 5 ) + (2 + "7"));

        // String "1004" int 1004로 변환하는 방법 / 문자열을 숫자로 변환
        String str3 = "1004";
        String str4 = "1000";
        int res = Integer.parseInt(str3);
        System.out.println(res); // int형인 1004
        System.out.println(Integer.parseInt(str4)); // int형인 1000

        // 기본형을 문자열로 변환하고 싶다면
        String value = String.valueOf(Integer.parseInt(str4)); // String형인 "1000" 결과 1000
        System.out.println(value);
        System.out.println(String.valueOf("A")); //오버로딩이 되는 것이라고 한다. 결과가 잘 나온다.

        // println, print, printf
        System.out.println("Hello!"); // 자동 줄바꿈
        System.out.printf("Hello! %n"); // 줄바꾼을 하지 않는다. %n or /n이라는 개행문자를 넣어주면 줄바꿈이 된다.
        System.out.print("Hello!");

    } // main의 끝
}
