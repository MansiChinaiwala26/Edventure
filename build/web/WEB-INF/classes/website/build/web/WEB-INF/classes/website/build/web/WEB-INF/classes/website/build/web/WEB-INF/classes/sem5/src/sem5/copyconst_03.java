package sem5;
import  java.util.Scanner;
class copyconst_03
{	
double l , b;
	copyconst_03()  						  // Default Constructor
	{
		System.out.println("\n\t\t\t-:  Area Of Traingle :-");
		System.out.println("\t\t\t    ----------------");
	}
	copyconst_03(double length , double base)  		//Parameterized  Constructor
	{
		l = length;
		b = base;     
	}
	
	copyconst_03(copyconst_03 v)					//Copy Constructor
	{
		l = v.l;
		b = v.b;
	}
	
	void disp()
	{
		System.out.println("Area is : "+0.5*l*b);
	}
	public static void main(String args[])
	{
		double x , y;
		Scanner vScanner =new Scanner(System.in);
		copyconst_03 obj1 =new copyconst_03();
		System.out.println("Enter length & Base Of Triangle :-");
		x=vScanner.nextDouble();
		y=vScanner.nextDouble();
		System.out.println("\n\nLength  : "+x+"\nBase  : "+y);
		copyconst_03 obj2 = new copyconst_03(x,y);
		copyconst_03 obj3 = new copyconst_03(obj2);
		obj3.disp();
	}	
}
    
