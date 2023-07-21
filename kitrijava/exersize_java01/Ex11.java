package exersize_java01;

public class Ex11 {

    public static void main(String[] args) {
        // Ex11 : 다음 코드를 실행하면 출력 결과로 5가 나오길 기대했는데 4가 출력 되었습니다. 어디에서 잘못된 것일까요?

        // 5.0 나누기 2는 실수다. 그래야 2.5가 나와서 * 2 는 5가 된다. double로 바꿔주지 않아서 답은 정수/정수로 4가 나오기때문에 잘못됐다.
        //int var1 = 5;
        //int var2 = 2;
        //double var3 = var1 / var2;
        //int var4 = (int) (var3 * var2);
        //System.out.println(var4);

        // 고쳐본 것
        int var1 = 5;
        int var2 = 2;
        double var3 = (double)var1 / var2;
        int var4 = (int) (var3 * var2); // 2.5 * 2는 5.0으로 실수가 나오기 때문에 형변환을 해주기
        System.out.println(var4); // 5가 나온다.
    }
}
