package sem5;
import java.util.Scanner;
class user_Exception extends Exception
{
	float x ;
	
	user_Exception(float b)
	{
		x = b;
	}
	
	public String toString()
	{ 
		return (" => user_Exception [" + x +"] is less Then Zero");
	}
}

class userex_03
{
	static void division(float a , float b) throws user_Exception
	{
		if(b <= 0)
		{
			throw new user_Exception(b);		//throws UDF user_Exception object 
		}
		else
		{ 
			System.out.println("=> Division is : "+a/b);
		}
	}






	public static void main(String args[])
	{
		System.out.println("\n\t-:Divided By Zero User Define Exception :-");
		System.out.println("\t===========================================");

		System.out.println("\n\t ***** A Divided by B ***** ");
		float A,b;
		try
		{
			Scanner myScanner = new Scanner(System.in);
    	    		System.out.println("=> Enter Number A :-");
    	   		A = myScanner.nextFloat();
			System.out.println("=> Enter Number B :-");
			b = myScanner.nextFloat();
			division(A,b);
		}	
		
		catch(user_Exception e)
		{
			System.out.println(e);	
		}
	}
}


