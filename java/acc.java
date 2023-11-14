import java.util.Scanner;
public class acc {
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int m = obj.nextInt();
        int p = obj.nextInt();
        double d = m*p/100;
        double aftm = m + d;
        System.out.println("before:" + m);
        System.out.println("procent:" + p);
        System.out.println("after:" + aftm);
    }
}