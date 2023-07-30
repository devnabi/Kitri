package exersize_java02;

public class Ex10 {

    public static void main(String[] args) {
        // Ex10 : 3개의 정수값 가운데 중앙값을 구하여 출력하는 int med3(int a, int b, int c) 메소드를 작성해주세요.

        // 호출
        System.out.println(med3(2, 100, 10));
    } // main의 끝

    // 메서드 작성
    public static int med3(int a, int b, int c){
        int median = a;

        if(a >= b && a <= c){
            return median = a;
        }
        if(b >= a && b <= c){
            return median = b;
        }
        if(c >= a && c <= b){
            return median = c;
        }
        return median;
    }
}
