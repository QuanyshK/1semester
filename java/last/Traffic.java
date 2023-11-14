import java.util.Scanner;
public class Traffic {
    String light;
    int time;
    public Traffic(String light, int time) {
        this.light = light;
        this.time = time;
    }
    public void changecolor(String light) {
        this.light = light;
    }
    public boolean isred() {
        return light.equals("red");
    } 
    public boolean isgreen() {
        return light.equals("green");
    }
    public int gtime() {
        return time;
    }
    public void ctime(int time) {
        this.time = time;
    }
}