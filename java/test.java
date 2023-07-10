import java.util.Scanner;
import javax.swing.JOptionPane;
import java.util.Random;
public class test {
    public static void main(String[] args) {
        String s = JOptionPane.showInputDialog("Enter password");
        JOptionPane.showMessageDialog(null, "Hello" + s);
        int a = Integer.parseInt(JOptionPane.showInputDialog("fck"));
        JOptionPane.showMessageDialog(null, "mf " + a);
        Random rand = new Random();
        int x = rand.nextInt();
        System.out.println(x);
    }
    
    }