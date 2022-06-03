
package besem5;
import java.lang.*;
class calc
{
	int real;
        int img;
 
	calc() 
        {}       
 
	calc(int r, int i)
	{
			real = r;
			img = i;
	}
 
	void display()
	{
		System.out.println(real+" + i "+img);
	}
 
	calc add(calc c2)
	{
		calc res = new calc(); 
		res.real = real + c2.real;
		res.img = img + c2.img;
 		return(res);
	}
}
 
class Complex
{
	public static void main(String args[])
	{
		calc c1 = new calc(12, 5);
		calc c2 = new calc(9,5);
                System.out.println("Complex Numbers:");
		System.out.println("C1 is: ");
		c1.display();
		System.out.println("C2 is: ");
		c2.display();
 
		calc c3 = new calc();
 
		System.out.println("Addition of C1 and C2 is: ");
		c3 = c1.add(c2);
		c3.display();
 
		
	}
}
   

