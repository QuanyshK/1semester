import java.util.Scanner;
public class exs0 {
    String name;
    String age;
    public exs0(String name, String age) {
        this.name = name;
        this.age = age;
    }
    public String gdata() {
        return name;
 
    }
    public String gdata2() {
        return age;
    }

    public static void main(String[] args) {
        String name;
        String age;
        Scanner obj = new Scanner(System.in);
        name = obj.nextLine();
        age = obj.nextLine();
        exs0 person = new exs0(name, age);
        System.out.println("Person name:" + person.gdata() + " age:" + person.gdata2());
    }
}