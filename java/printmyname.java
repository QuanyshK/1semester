import java.util.Scanner;
public class printmyname{
	public static void main(String[] args) {
		Scanner obj = new Scanner(System.in);
		String name = obj.nextLine();
		for(int i = 0; i < name.length() + 2; i++ ) {
			if(i  == 0) {
				System.out.print("+");
			}
			else if(i == 4) {
				System.out.print("+\n");
			}
			else {
				System.out.print("-");
			
			}
		}
		System.out.print("|" + name + "|\n");
		for(int i = 0; i < name.length() + 2; i++ ) {
			if(i  == 0) {
				System.out.print("+");
			}
			else if(i == 4) {
				System.out.print("+\n");
			}
			else {
				System.out.print("-");
			
			}
		}
	}
}