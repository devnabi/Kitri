package exersize_java01;

public class Ex05 {

    public static void main(String[] args) {
        // Ex5 : var1부터 var4까지 + 연산을 수행해서 int 타입 result 변수에 9가 저장되도록 빈칸의 코드를 완성해보세요.

        long var1 = 2L;
        float var2 = 1.8f;
        double var3 = 2.5;
        String var4 = "3.9";
        double d = Double.parseDouble(var4);
        System.out.println("d = " + d);
        int result = (int)(var2 + var3) + (int)var1 + (int)d;
        System.out.println("result = " + result);
    }
}
