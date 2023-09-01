package exception08;

public class Exception {

    public static void main(String[] args) {
        // 2023-08-02 예외처리

        // 예외처리를 하는 방법에는 2가지가 있다. try ~ catch와 throws다.
        // try ~ catch : 우리가 직접 처리를 하는 것이다.
        // throws : 떠넘기는 것이다.
        // Exception은 상속관계에서 가장 부모다. 그렇기때문에 catch의 매개값을 Exception으로 줘도 처리가 잘 되기는 한다.
        // Exception의 이름을 명확하게 값을 주고 처리하는 것이 좋다. 보기에도 더 명확할 뿐더러 어떤 에러가 어디서 났는지 알 수 있다.

        String data = null;
        System.out.println("Hello World!");
        // System.out.println(data.toString()); NullPointerException : null값을 참조하는 것이 없다면 그것을 접근하려 할 때 에러 발생
        try {
            System.out.println(data.toString());
        }
        catch (NullPointerException e){
            System.out.println("NullPointerException가 에러가 발생했습니다.");
        }

        // 조건문으로도 예외 처리를 할 수 있다.
        // ArrayIndexOutOfBoundsException : 길이(인덱스가 초과)가 초과된 것을 접근하려할 때 에러 발생
        if(args.length == 2){
            String data1 = args[0];
            String data2 = args[1];
            System.out.println("args[0]: " + data1);
            System.out.println("args[1]: " + data2);
        }
        else {
            System.out.println("ArrayIndexOutOfBoundsException 에러가 발생했습니다.");
        }
    } // main의 끝
}
