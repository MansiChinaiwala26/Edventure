package sem5;
import  java.util.Scanner;
    
class input									//super Class
{
	int ans;
	int a=10;
	int b=20;	
	
}
class sum extends input							//sub Class
{
	void add()
	{
		int ans = a+b;
		System.out.println("\nA = "+a+"\nB = "+b);
		System.out.println("\n=> Addition is :"+ans);
	}	
}
class sub extends input							//sub Class
{
	void subt()
	{
		ans = a-b;
		System.out.println("\nA = "+a+"\nB = "+b);
		System.out.println("\n=>Subtraction is :"+ans);
	
	}
}
class mul extends input							//sub Class
{	
	void mult()
	{
		ans = a*b;
		System.out.println("\nA = "+a+"\nB = "+b);
		System.out.println("\n+>Multiplication is :"+ans);
	
	}
}




class div extends input							//sub Class
{
	void divi()
	{
		ans = a/b;
		System.out.println("\nA = "+a+"\nB = "+b);
		System.out.println("Division is :"+ans);
	
	}
}


class hierachalinher_03 {									//Main Class
	public static void main(String args[])
	{
		
		int n;
		Scanner vScanner =new Scanner(System.in);
		
		System.out.println("\n  Operation:");
		System.out.println("=================");
		System.out.println("\n 1. Addition");
		System.out.println(" 2. Subtraction");
		System.out.println(" 3. Multiplication");
		System.out.println(" 4. Division");
		
		System.out.println("\nChoose Operation:");
		n=vScanner.nextInt();

		switch(n)
		{
			case 1: sum obj2 =new sum();
				obj2.add();
				break;
			
			case 2: sub obj3=new sub();
				obj3.subt();
				break; 
			
			case 3: mul obj4=new mul();
				obj4.mult();
				break;

			case 4: div obj5=new div();
				obj5.divi();
				break;  

			default:System.out.println("Wrong Choose");
				break;
		}	
	}
}


