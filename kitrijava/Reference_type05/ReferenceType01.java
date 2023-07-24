package Reference_type05;

public class ReferenceType01 {

    public static void main(String[] args) {
        // 2023-07-24 참조타입, 배열

        // 참조타입 : 스택에 올라간 참조변수가 힙 영역에 올라간 객체를 가리킨다.(참조)
        String name = "devnabi";
        String name2 = "devnabi";
        System.out.println(name == name2);

        // 기본타입 : 스택에 바로 값이 저장되고 힙 영역에는 올라가지 않는다.
        char c = 'A';
        char c2 = 'A';
        System.out.println(c == c2);

        // 배열 : 여러개의 데이터를 저장하기 위해 만들어진 자료구조다.
        // 배열을 매개변수로 줄 수 있다.
        String strNull = null; // null을 허용할 수 있는 이유 : 힙 영역에 들어갈 수 있는 참조타입이기때문이다.

        // 30명의 점수
        // 1. 배열길이 선언
        int[] scores = new int[30];

        // 2. 반복문 만들기 : 배열에 랜덤값을 각각 넣는 반복문
        for(int i = 0; i < scores.length; i++){
            // i = 0, 1, 2....29
            scores[i] = (int) (Math.random() * 100 + 1);
        }

        // 3. 학생들의 점수 조회
        for(int i = 0; i < scores.length; i++){
            System.out.println("점수 = " + scores[i]);
        }

        // 4. 학생들의 평균 구하기
        double sum = 0.0;
        for(int i = 0; i < scores.length; i++){
            sum += scores[i];
        }
        double avg = sum / scores.length;
        System.out.println("학생들의 평균 = " + avg);

        // 5. 학생들 중 몇번째 학생이 1등인지, 1등 학생의 점수는 몇인지 구하기
        int max = 0;
        for(int i = 1; i < scores.length; i++){
            if(scores[max] < scores[i]){
                max = i; // 점수들을 순회하면서 max값보다 크다면 max에 대입하라는 것이다.
            }
        }
        System.out.println("1등 학생은 " + (max + 1) +" 번째 학생입니다.");
        System.out.println("1등인 학생의 점수 : " + scores[max]);

        // 5번 반복문을 그냥 함수써서 1등이 몇점인지만 알았다...ㅠ
        // for(int i = 0; i < scores.length; i++){
        //    Arrays.sort(scores);
        // }
        // System.out.println("1등인 학생의 점수 : " + scores[29]);
    } // main의 끝
}
