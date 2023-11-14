import java.util.Scanner;
import java.time.LocalDate;
import java.time.Period;
public class Employee2 {
    String name;
    int salary;
    LocalDate hdate;
    public Employee2(String name, int salary, LocalDate hdate) {
        this.name = name;
        this.salary = salary;
        this.hdate = hdate;
    }
    public String get_name() {
        return name;
    }
    public int get_salary() {
        return salary;
    }
    public LocalDate gethdate() {
        return hdate;
    }
    public void sname(String name) {
        this.name = name;
    }
    public void ssalary(int salary) {
        this.salary = salary;
    }
    public void shdate(LocalDate hdate){
        this.hdate = hdate;
    }
    public int timeago() {
        return Period.between(hdate, LocalDate.now()).getYears();
    }
    public static void main(String[] args) {
        Employee2 e = new Employee2("Jponh", 75000, LocalDate.parse("2001-01-14"));
        System.out.println("Name:" + e.get_name() + " Salary:" + e.get_salary() + " Hire Date:" + e.gethdate() + " Years of company:" + e.timeago());

    }
}
