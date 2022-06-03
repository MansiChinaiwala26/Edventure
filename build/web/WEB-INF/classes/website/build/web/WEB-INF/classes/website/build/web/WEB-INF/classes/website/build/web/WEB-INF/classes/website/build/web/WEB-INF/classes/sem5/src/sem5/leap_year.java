package sem5;
import  java.util.Scanner;
 
class A1						//Super Class
{
	int y;
	public void ip(int a)
	{
		 y=a;
		System.out.println("\n\t Enter year is : "+y);
	} 
}
class B1 extends A1				//Sub Class
{
	int y;
	B1(int y)  // constructor……
	{
		super.y=y;		
		if (y%4==0)
			System.out.println("\t =>"+y+" is leap year");
		else
			System.out.println("\t =>"+y+" is Not leap year");
	}
}
//……………………………………………………………………………………
 class leap_year {
	public static void main(String args[])
	{
	
		int n;
		
		Scanner s1 =new Scanner(System.in);
		
		System.out.println("\n\tyear is Leap or not: ");
		System.out.println("\t=====================");
	
		System.out.println("Enter Year:");
		n=s1.nextInt();

		A1 obj =new A1();
		obj.ip(n);
		B1 obj1=new B1(n);
	}	
	
}
   

