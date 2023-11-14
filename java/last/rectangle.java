import java.util.Scanner;
public class rectangle {
    int w;
    int h;
    public rectangle(int w, int h) {
        this.w = w;
        this.h = h;
    }
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int w = obj.nextInt();
        int h = obj.nextInt();
        int area = w * h;
        int perimeter = 2 * (w + h);
        System.out.println("Area:" + area + " Perimeter:" + perimeter);
    }
}