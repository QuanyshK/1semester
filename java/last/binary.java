import java.util.Scanner;
public class binary {
    public static void main(String[] args) {
        int n;
        Scanner obj = new Scanner(System.in);
        n = obj.nextInt();
        int bin = 0, m = 1, r;
        while(n!=0) {
            r = n%2;
            bin = bin + r*m;
            m = m*10;
            n = n/2;
        }
        System.out.println(bin);

    }    
}