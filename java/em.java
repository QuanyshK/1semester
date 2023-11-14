
public class em {
    String name;
    String major;
    int salary;
    public em (String name, String major, int salary)  {
        this.name = name;
        this.major = major;
        this.salary = salary;
    }
    public String getname() {
        return name;
    }
    public String getmajor() {
        return major;
    }
    public int getsalary() {
        return salary;
    }
    public void setsalary(int salary) {
        this.salary = salary;
    }
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
