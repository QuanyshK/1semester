public class student {
    private String name;
    private int id;
    private int year;
    static int count = 0;
public student(String newname) {
    name = newname;
    id = count;
    count++;


}
public String getname() {
    return name;
}
public int getid (){
    return id;
}
public int year () {
    return year;
}
public void increment() {
	
}
}
