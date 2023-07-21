package exersize_java02;

public class Ex01 {

    public static void main(String[] args) {
        // Ex1 : for문을 이용해서 1부터 100까지 정수 중 3의 배수의 총합을 구하는 코드를 작성해보세요.
        // 실행하면 1683이 나와야 한다.

        int sum = 0;
        for(int i = 1; i <= 100; i++){
            if(i % 3 == 0){
                sum += i;
            }
        } // for의 끝
        System.out.println(sum);
    } // main의 끝
}
