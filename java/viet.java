import java.util.Scanner;
public class viet {
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int a = obj.nextInt();
        int b = obj.nextInt();
        int c = obj.nextInt();
        int d = b * b - 4 * a * c;
        if(d<0) {
            System.out.print("error");
        }
        if(d==0) {
            double x = 2*a;
            System.out.println("x: " + (-b/x));
            
        }
        if(d>0) {
            double z = 2 * a;
            double x1 = (Math.pow(d, 0.5) - b)/z;
            double x2 = (-(Math.pow(d, 0.5)) - b)/z;
            System.out.print("x1: " + x1 + " x2: " + x2);
        }
    }
}