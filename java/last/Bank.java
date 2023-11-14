import java.util.Scanner;
import java.util.ArrayList;
public class Bank {
    private ArrayList <Account> accounts = new ArrayList <Account> ();
    public void addacc(Account account) {
        accounts.add(account);
    }
    public void remacc(Account account) {
        accounts.remove(account);
    }
    public void withd(Account account, double a) {
        account.with(a);
    }
    public void depos(Account account, double a) {
        account.depo(a);
    } 
    public ArrayList <Account> getaccs() {
        return accounts;
    }
    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        Bank b = new Bank();
        String owner1 = obj.nextLine();
        double balance1 = obj.nextDouble();
        obj.nextLine();
        Account user = new Account(owner1, balance1);
        b.addacc(user);
        String owner2 = obj.nextLine();
        double balance2 = obj.nextDouble();
        obj.nextLine();
        Account user1 = new Account(owner2, balance2);
        b.addacc(user1);
        ArrayList <Account> accounts = b.getaccs();
        for(Account account: accounts) {
            System.out.println(account.getinfo());
        }
        double a = obj.nextDouble();

        b.withd(user, a);
        System.out.println(user.getinfo());
        double a1 = obj.nextDouble();
        b.depos(user1, a1);
        System.out.println(user1.getinfo());
    }
    }
