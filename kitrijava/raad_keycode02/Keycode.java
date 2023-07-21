package raad_keycode02;

import java.util.Scanner;

public class Keycode {

    public static void main(String[] args) {
        // 2023-07-20 입출력

        // System.in.read(); / Scaaner

        Scanner sc = new Scanner(System.in);
        String inputData;

        while(true){
            inputData = sc.nextLine(); // 대기
            System.out.println("입력된 문자열 : \"" + inputData + "\"");

            // 종료 조건
            if (inputData.equals("q")){
                break;
            }
        }
    }
}
