import java.util.Scanner;

public class palin{

	public static void main(String[] args) 
	{
		Scanner read = new Scanner(System.in);
		String word = read.nextLine();
		read.close();
        char[] arr = word.toCharArray(); 
        boolean result = Palindrome(arr);
        
        if(result == true) 
        {
        	System.out.println("Palindrome!");
        }
        else 
        {
        	System.out.println("Not Palindrome!");
        }

	}
	public static boolean Palindrome(char[] word)
	{
	    int i1 = 0;
	    int i2 = word.length - 1;
	    while (i2 > i1) 
	    {
	        if (word[i1] != word[i2]) 
	        {
	            return false;
	        }
	        ++i1;
	        --i2;
	    }
	    return true;
	}

}