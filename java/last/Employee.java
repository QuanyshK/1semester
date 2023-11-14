import java.util.Scanner;
public class Employee {
    String name, title;
    static int salary;
    public Employee(String name, String title, int salary) {
        this.name = name;
        this.title = title;
        this.salary = salary;
    }
    public String get_name() {
        return name;
    }
    public String get_title() {
        return title;
    }
    public int get_salary() {
        return salary;
    }
    public static void update_salary(double perc) {
        salary = (int) (salary + salary*perc/100);
    }
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        String name = obj.nextLine();
        String title = obj.nextLine();
        int salary = obj.nextInt();
        Employee e = new Employee(name, title, salary);
        System.out.println("Name:" + e.get_name() + " Job title:" + e.get_title() + " Salary:" + e.get_salary());
        double perc = obj.nextDouble();
        Employee.update_salary(perc);
        System.out.println("Name:" + e.get_name() + " Job title:" + e.get_title() + " New Salary:" + e.get_salary());
    }
}
