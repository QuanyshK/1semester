import java.util.Scanner;
import java.util.ArrayList;
public class Book {
    String name;
    String author;
    String isbn;
    static ArrayList < Book > bookcol = new ArrayList < Book > ();
    public Book(String name, String author, String isbn) {
        this.name = name;
        this.author = author;
        this.isbn = isbn;
    }
    public String gname(){
        return name;
    }
    public void sname(String name) {
        this.name = name;
    }
    public String gauthor() {
        return author;
    }
    public void sauthor(String author) {
        this.author = author;
    }
    public String gisbn() {
        return isbn;
    }
    public void sisbn(String isbn) {
        this.isbn = isbn;
    }
    public static void addbook(Book book) {
        bookcol.add(book);
    }
    public static void rembook(Book book) {
        bookcol.remove(book);
    }
    public static ArrayList <Book> getlist() {
        return bookcol;
    }
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        String name = obj.nextLine();
        String author = obj.nextLine();
        String isbn = obj.nextLine();
        Book book = new Book(name, author, isbn);
        Book.addbook(book);
        String name1 = obj.nextLine();
        String author1 = obj.nextLine();
        String isbn1 = obj.nextLine();
        Book book2 = new Book(name1, author1, isbn1);
        Book.addbook(book2);
        for (Book b: bookcol) {
            System.out.println(b.gname() + " " + b.gauthor() + " " + b.gisbn());
        }
        Book.rembook(book);
        for (Book b : bookcol) {
            System.out.println(b.gname() + " " + b.gauthor() + " " + b.gisbn());
        }
    }
}