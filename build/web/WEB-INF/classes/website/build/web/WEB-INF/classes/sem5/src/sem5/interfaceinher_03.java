
package sem5;
import  java.util.Scanner;
    interface i1								//interface  i1
{
	final double pi  = 3.14;
	public void area(int a);
}

 interface i2								//interface  i2
{
	public void perimeter(int b);	
}

class interfaceinher_03 implements i1,i2							//Main Class A
{
	double k;
	int r;
	public void area(int a)
	{	
		r = a;
		k = pi*r*r;
		System.out.println("\n\t=> Area  of Circle : "+k);		
	} 
	
	public void perimeter(int b )
	{	
		r = b;
		k =2*pi*r;
		System.out.println("\n\t=> perimeter of Circle : "+k);		
	}






		public static void main(String args[])		
 		{
			int k,n;
			Scanner vScanner =new Scanner(System.in);

			System.out.println("\nEnter Redius For Area of Circle : ");
			k=vScanner.nextInt();
	
			System.out.println("\nEnter Redius For perimeter of Circle :");
			n=n=vScanner.nextInt();
	   	

			interfaceinher_03 obj1 = new interfaceinher_03();
			obj1.area(k);
			obj1.perimeter(n);	
 		}
	
}


