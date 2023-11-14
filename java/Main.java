
import java.util.Scanner;

public class Main {
        public static void main(String[] args) {
        String name = "QK";
        String major = "MAster OOgway";
         em obj = new em(name, major, 200000);
        System.out.println( "Name: " + obj.getname() + " title: " + obj.getmajor() + " salary: " + obj.getsalary());
        Scanner ob = new Scanner(System.in);
        int newsalary = ob.nextInt();
        System.out.println( "Name: " + obj.getname() + " title: " + obj.getmajor() + " salary: " + obj.getsalary());


    }
}
