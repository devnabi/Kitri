package class06;

public class StudentClass01 {

    public static void main(String[] args) {
        // 2023-07-25 클래스(1)

        // 객체 : 실제 존재하는 사물이나 개념을 말한다. 무형인 시간이나 감정 등 모두를 말한다.
        // 클래스는 설계도로 비유한다. 클래스가 없으면 객체생성이 불가능하다. / 클래스 : 붕어빵 기계, 객체 : 붕어빵이다.
        // 객체 모델링 : 현실 세계의 객체를 소프트웨어 객체로 설계하는 것을 객체 모델링이라고 한다. 객체의 필드와 메소드로 정의하는 과정
        // 참조변수 this는 자기 자신 객체를 의미한다. 생성자 this()와는 다르다. 생성자 this는 중복제거를 위해 호출할 때 사용한다.

        // 객체 생성
        Student student = new Student();
        Student student2 = new Student(1, "가","나"); // 값 초기화 가능, 오버로드한 것이 우선으로 실행된다.

        // 접근하여 필드 값주기
        student.str = "devnabi"; // 변경
        student.str2 = "Kitri"; // 초기화

        // 필드 값 읽기
        System.out.println(student.str);
        System.out.println(student.str2);
    } // main의 끝
}

// class 써보기
class Student{
    // 필드 선언
    int a = 10;
    int b; // 인스턴스 변수 기본값 : 0
    String str = "abc";
    String str2; // 참조형 변수 기본값 : null

    // 기본생성자 : 매개변수를 주지 않는다. 다른 생성자가 없다면 컴파일러가 기본생성자를 만들어준다.
    // Student(){}
    // 생성자 : 매개변수가 있는 생성자를 사용하고 싶다면 기본생성자를 수동으로 써줘야한다. / 변수 초기화를 위해서 쓴다.
    Student(int a, int b){
        this.a = a;
        this.b = b;
    }

    // 중복되는 코드
    // Student(String str, String str2){
    //    this.str = str;
    //    this.str2 = str2;
    // }

    // 다른 생성자에서도 쓰는 코드 중복을 막기 위해 생성자끼리 호출하는 방법이 있다. this생성자는 매개변수가 많은 생성자를 따라간다.
    Student(){
        this(1, "a", "b");
    }

    Student(int a, String str, String str2){
        this.a = a;
        this.str = str;
        this.str2 = str2;
    }
}
