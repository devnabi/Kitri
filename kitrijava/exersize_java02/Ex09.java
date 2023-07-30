package exersize_java02;

public class Ex09 {

    public static void main(String[] args) {
        // Ex9 : 4개의 정수값 가운데 최댓값을 구하여 출력하는 int max4(int a, int b, int c, int d) 메소드를 작성해주세요.

        // 호출
        System.out.println(max4(10, 9, 5, 2));
    } // main의 끝

    // 메서드 작성
    public static int max4(int a, int b, int c, int d){
        // 실습5의 예시를 참고해서 해보기

        // 변수 선언
        int max = a;

        // 비교하기
        if(max < b){
            max = b;
        }
        if(max < c){
            max = c;
        }
        if(max < d){
            max = d;
        }
        return max;
    }
//    public static int max4(int a, int b, int c, int d){
//        // 내가 해본 것...그냥 비교하기
//        if(a > b && a > c && a > d){
//            return a;
//        }
//        else if(b > a && b > c && b > d){
//            return b;
//        }
//        else if(c > a && c > b && c > d){
//            return b;
//        }
//        else {
//            return d;
//        }
//    } // 메서드의 끝
}
