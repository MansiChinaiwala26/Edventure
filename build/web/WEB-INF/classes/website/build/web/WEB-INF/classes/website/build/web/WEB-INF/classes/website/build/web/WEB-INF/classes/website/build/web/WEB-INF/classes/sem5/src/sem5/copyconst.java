package sem5;
import  java.util.Scanner;
public class copyconst {
	
double l , b;
	copyconst()  						  // Default Constructor
	{
		System.out.println("\n\t\t\t-:  Area Of Traingle :-");
		System.out.println("\t\t\t    ----------------");
	}
	copyconst(double length , double base)  		//Parameterized  Constructor
	{
		l = length;
		b = base;     
	}
	
	copyconst(copyconst v)					//Copy Constructor
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
		copyconst obj1 =new copyconst();
		System.out.println("Enter length & Base Of Triangle :-");
		x=vScanner.nextDouble();
		y=vScanner.nextDouble();
		System.out.println("\n\nLength  : "+x+"\nBase  : "+y);
		copyconst obj2 = new copyconst(x,y);
		copyconst obj3 = new copyconst(obj2);
		obj3.disp();
	}	
}


