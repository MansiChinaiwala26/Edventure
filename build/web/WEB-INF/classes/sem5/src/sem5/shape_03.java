package sem5;
import  java.util.Scanner;
abstract class shape
{
	double A;
	int i1;
	int i2;
	abstract void area();
}
class triangle extends shape
{
	
	triangle(int a , int b)		//Constructor
	{
		i1 = a;
		i2 = b;		
	}
	
	void area()
	{
		A =(0.5*i1*i2);
		System.out.println("\n => Area Of triangle : "+A);
	}
}
class circle extends shape
{
	
	circle(int a )		//Constructor
	{
		i1 = a;
	}
	



	void area()
	{
		A =3.14*i1*i1;
		System.out.println("\n =>Area Of Circle : "+A);
	}
}
class rectangle extends shape
{
	
	rectangle(int a , int b)		//Constructor
	{
		i1 = a;
		i2= b;
	}
	
	void area()
	{
		A =(i1*i2);
		System.out.println("\n =>Area Of Rectangle : "+A);
	}
}

	

class shape_03
{
	public static void main(String args[])
	{
		
		int k,n,x,y,j;
		Scanner vScanner =new Scanner(System.in);
	
		System.out.println("\n\t Find Area of Triangle , Circle , Rectangle");
		System.out.println("\n\t==============================================");
		System.out.println("\nEnter bases of Triangle : ");
		k=vScanner.nextInt();
		n=n=vScanner.nextInt();
		triangle obj1 =new triangle(k,n);


		System.out.println("\nEnter Redius For Circle : ");
		x=vScanner.nextInt();
	   	circle obj2 =new circle(x);
	   	
		System.out.println("\nEnter Width For Rectangle : ");
		y=vScanner.nextInt();
		

j=vScanner.nextInt();
		rectangle obj3 = new rectangle(y,j);	

		obj1.area();
		obj2.area();
		obj3.area();
	}
	
}


