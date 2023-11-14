import java.util.Scanner;
public class input {
    public static void main(String[] args) {
        Scanner user = new Scanner(System.in);
        String username = user.nextLine();
        int age = user.nextInt();
        System.out.println(username + ", " + age); 
    }
}