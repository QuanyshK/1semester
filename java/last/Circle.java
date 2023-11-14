import java.util.Scanner;
import java.lang.Math;
public class Circle {
    int radius;
    public Circle(int radius) {
        this.radius = radius;
    }
    public static int Area(double radius) {
        double Area = Math.PI * radius * radius;
        return (int) Area;

    }
    public static int Circleline(double radius) {
        double Circleline = 2 * Math.PI * radius;
        return (int) Circleline;
    }
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        double rad = obj.nextFloat();
        System.out.println("Area:" + Circle.Area(rad));
        System.out.println("Circumference: "+Circle.Circleline(rad));
    }
}