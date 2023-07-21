package exersize_java02;

public class Ex03 {

    public static void main(String[] args) {
        // Ex3 : 주어진 정수가 양수인지 음수인지 판별하는 void judgeSign(int num) 메소드를 작성해보세요.
        // 양수를 입력한 경우 : 입력하신 값은 양수 입니다.
        // 음수를 입력한 경우 : 입력하신 값은 음수 입니다.

        // 매서드 호출
        judgeSign(-1);


    } // main의 끝

    // 매서드 작성
    public static void judgeSign(int num){
        if(num >= 0){
            System.out.println("입력하신 값은 양수 입니다.");
        }
        else {
            System.out.println("입력하신 값은 음수 입니다.");
        }
    }
}
