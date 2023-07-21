package exersize_java01;

import java.util.Scanner;

public class Ex01 {

    public static void main(String[] args) {
        // Ex1 : 자신의 이름을 키보드로 입력 받아 콘솔 화면에 출력하는 프로그램을 구현하세요.
        Scanner sc = new Scanner(System.in);
        String name = sc.nextLine();
        System.out.println(name);
    }
}
