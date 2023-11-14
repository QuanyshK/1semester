import java.util.Scanner;
public class square {
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int a = obj.nextInt();
        System.out.print("Area:" + a * a + "\n");
        System.out.print("Perimeter:" + a * 4 + "\n");
        int d = a * a + a * a;
        System.out.print("Diagonal:" + Math.pow(d, 0.5));
    }
}