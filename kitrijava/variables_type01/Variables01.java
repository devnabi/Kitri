package variables_type01;

public class Variables01 {

    public static void main(String[] args) {
        // 2023-07-19 - 변수와 타입(1)

        // 변수 : 값을 저장할 수 있는 공간이다. 메모리에 이름을 붙여준다고 생각하면 된다.
        // 변수를 쓰는 이유 : 편하게 이름으로 값을 재사용하기 위해 쓴다. 유용하다.

        // 내가 한 질문
        // 메소드가 종료되면 메모리에서 없어진다는 것을 보고 가비지컬렉터를 말하는 것인가 질문했다. 그건 객체만 그런것인가? 변수의 특징인가?
        // 어떻게 동작하는가? : 매소드가 호출되면 스택이 쌓인다. 그러다가 언젠가 종료되면 메모리에 사라진다는 뜻이다.
        // 운영체제를 공부하면 나온다고 한다. 가비지 컬렉터 동작 검색하기

        System.out.println("이주희");

        // SQL과 다르게 대소문자 구분을 꼭 한다. 완전히 다른 변수인 것이다.
        int A = 1;
        int a = 1;

        // 문자열 타입의 변수 선언
        String name = "이주희";
        System.out.println(name);

        // 변수 선언
        int hour = 3;
        int minute = 7;
        System.out.println("Hour = " + hour);
        System.out.println("Minute = " + minute);
        System.out.println(hour + "시간 " + minute + "분"); // 숫자 + 문자열 / 3시간7분

        // 변수 값 재할당
        hour = 4;
        minute = 15;
        System.out.println(hour + "시간 " + minute + "분"); // 4시간 15분
        System.out.println(hour * 60 + minute + "분");

        // 변수의 범위
        int scope = 100;

        {
            int scope2 = 200; // 지역변수
            // 접근이 가능한 것을 확인
            System.out.println(scope);
            System.out.println(scope2);

            if(true){
                int scope3 = 3;
                System.out.println(scope3);

            }
        }

        // 지역변수가 이 범위에서는 접근이 불가능하다는 것을 확인
        // System.out.println(scope2);

    }
}
