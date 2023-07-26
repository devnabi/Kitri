package class06;

public class Class02 {

    public static void main(String[] args) {
        // 2023-07-26 클래스(2)

        // 메서드의 필수 요소 : 리턴타입, 이름, 매개변수는 필수는 아니지만 (), 실행 블록 {}
        // 잘못된 호출 : str.length("Hello World!");
        // static이 붙은 메서드가 아니기때문에 에러가 난다. 같은 static이거나 객체생성을 해줘야한다.
        // 오버로딩 : 이름이 같은 메서드의 매개변수 타입이나 개수를 바꾸는 것이다. 이름이 같다는 것은 작업이 같다는 것이다. 작업이 같은 메서드의 타입을 바꾸는 것이다.
        // 오버로딩을 하는 이유 : 매개변수 타입을 다양하게 받기 위해 사용한다.

        // 객체생성하고 메서드 호출을 출력하기
        Class02 class02 = new Class02();
        System.out.println(class02.countWord("Hello World!"));

        // Sum1() 메서드를 사용하기 위해 배열 선언
        int[] arr = {1, 2, 3, 4, 5};
        // 객체생성과 호출
        Computer computer = new Computer();
        System.out.println(computer.Sum1(arr));
    } // main의 끝

    // 메서드 작성
    int countWord(String str){
        return str.length();

    } // 메서드의 끝
}
class Computer {
    int Sum1(int[] arr){
        int sum = 0;
        for(int i = 0; i < arr.length; i++){
            sum += arr[i];
        } // for의 끝
        return sum;
    }

    // 오버로딩
    double areaRectagle(double width){
        return width * width;
    }

    double areaRectagle(double width, double height){
        return width * height;
    }
} // class의 끝
