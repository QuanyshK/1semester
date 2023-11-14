package last;

import java.util.Scanner;
import java.util.ArrayList;
public class Student {
    static ArrayList <Course> courses = new ArrayList <Course> ();

    public void addcourse(Course course) {
        courses.add(course);
    }
    public void remcourse(Course course) {
        courses.remove(course);
    }
    public static ArrayList <Course> getcourses() {
        return courses;
    }
    public static void main(String[] args) {
        Student stud = new Student();
        Scanner obj = new Scanner(System.in);
        String student = obj.nextLine();
        String course = obj.nextLine();
        int grade = obj.nextInt();
        obj.nextLine();
        Course user = new Course(course, grade);
        stud.addcourse(user);
        String course1 = obj.nextLine();
        int grade1 = obj.nextInt();
        obj.nextLine();
        Course user1 = new Course(course1, grade1);
        stud.addcourse(user1);
        String course2 = obj.nextLine();
        int grade2 = obj.nextInt();
        obj.nextLine();
        Course user2 = new Course(course2, grade2);
        stud.addcourse(user2);
        System.out.println(student);
        ArrayList <Course> courses = getcourses();
        for(Course coure: courses) {
            System.out.println(coure.getinfo1());
        }
    }
}
