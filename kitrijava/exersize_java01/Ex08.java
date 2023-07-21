package exersize_java01;

import java.util.Scanner;

public class Ex08 {

    public static void main(String[] args) {
        // Ex8 : Scanner 클래스를 이용해 이름, 주민번호 앞 6자리, 전화번호를 키보드에서 입력받고 출력하는 코드를 작성해보세요.

        // [필수 정보 입력]
        // 1. 이름 : _ (입력받아야함)
        // 2. 주민번호 앞 6자리 : _ (입력받아야함)
        // 3. 전화번호 : _ (입력받아야함)

        //         [입력한 내용]
        // (입력받은 이름)
        // (입력받은 주민번호 앞 6자리)
        // (입력받은 전화번호)

        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();
        int i = Integer.parseInt(sc.nextLine());
        String str2 = sc.nextLine();

        System.out.println("1. 이름 : " + str);
        System.out.println("2. 주민번호 앞 6자리 : " + i);
        System.out.println("3. 전화번호 : " + str2);

    }
}
