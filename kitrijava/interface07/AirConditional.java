package interface07;

public class AirConditional implements RemoteControl{
    int volume;
    @Override
    public void turnOn() {
        System.out.println("에어컨을 켠다.");
    }

    @Override
    public void turnOff() {
        System.out.println("에어컨을 끈다.");
    }

    @Override
    public void setVolume() {
        System.out.println("볼륨을 설정한다.");
    }
}
