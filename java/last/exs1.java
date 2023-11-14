import java.util.Scanner;

//second task
public class exs1 {
    String name;
    String breed;
    String nname, nbreed;
    public exs1(String name, String breed) {
        this.name = name;
        this.breed = breed;
    }
    public String gdata() {
        return name;
 
    }
    public String gdata2() {
        return breed;
    }
    public void setdata(String name) {
        this.name = name;
    }
    public void setdata2(String breed) {
        this.breed = breed;
    }
    public static void main(String[] args) {
        String name;
        String breed;
        
        Scanner obj = new Scanner(System.in);
        name = obj.nextLine();
        breed = obj.nextLine();
        exs1 dog = new exs1(name, breed);
        System.out.println("Dog name:" + dog.gdata() + " breed:" + dog.gdata2());
        name = obj.nextLine();
        dog.setdata(name);
        breed = obj.nextLine();
        dog.setdata2(breed);
        System.out.println("New dog name:" + dog.gdata() +  " his breed:" + dog.gdata2());
    }
}