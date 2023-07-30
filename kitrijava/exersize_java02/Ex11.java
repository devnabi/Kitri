package exersize_java02;

public class Ex11 {

    public static void main(String[] args) {
        // Ex11 :  1~10의 합은 (1 + 10) * 5와 같이 구할 수 있습니다.
        // 이를 ‘가우스의 덧셈’이라고 하는데 이 방법을 이용하여 1부터 n까지의 정수 합을 구하는 프로그램을 작성하세요.

        // System.out.println((1 + n) * n / 2);

        // 호출
        System.out.println(Sum1(10));

//        for(int i = 1; i <= n; i++){
//            sum += i;
//        }
//        System.out.println(sum);
    } // main의 끝

    // 메서드 작성
    public static int Sum1(int n){
        return (1 + n) * n / 2;
    }
}
