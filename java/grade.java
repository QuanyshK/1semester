import java.util.Scanner;
public  class grade {
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int g = obj.nextInt();
        if (g > 49) {
            if (g > 49 & g < 55) {
                System.out.print("D");
            }
            else if (g > 54 & g < 60) {
                System.out.print("D+");
            }
            else if (g > 59 & g < 65 ) {
                System.out.print("C-");
            }
            else if (g > 64 & g < 70) {
                System.out.print("C");
            }
            else if (g > 69 & g < 75) {
                System.out.print("C+");
            }
            else if (g > 74 & g < 80) {
                System.out.print("B-");

            }
            else if (g > 79 & g < 85) {
                System.out.print("B");

            }
            else if (g > 84 & g < 90) {
                System.out.print("B+");
            }
            else if (g > 89 & g < 95) {
                System.out.print("A-");
            }
            else if (g > 94) {
                System.out.print("A");
            }

        }
        else {
            System.out.print("F");
        }
    }
}