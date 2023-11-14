import java.util.Scanner;
public class Animal {
    protected String  type = "Animal";
    public void makesound() {
        System.out.println("meow");
    }
    class Cat extends Animal {
 
        private String name;

        public static void main(String[] args) {
                    final String name = "cat";
                    Cat cats = new Cat();
                    cats.makesound();
                    System.out.println("Its " + cats.type + " they called " + cats.namprotected String name = "cat";e);
        }
        
    }
}