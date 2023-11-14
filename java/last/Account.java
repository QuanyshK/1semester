
public class Account {
    String owner;
    double balance;
    public Account(String owner, double balance) {
        this.owner = owner;
        this.balance = balance;
    }
    public String getowner() {
        return owner;
    }
    public double getbalance() {
        return balance;
    }
    public void sowner(String owner) {
        this.owner = owner;
    }
    public void sbalance(double balance) {
        this.balance = balance;
    }
    public void depo(double a) {
        balance += a;
    }
    public void with(double a) {
        balance -= a;
    }
    public String getinfo() {
        return "Name:" + owner + " Balance:" + balance;
    }
    
}