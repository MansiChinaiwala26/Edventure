package sem5;

  class A									//super Class
{
	int a;
	void seta(int x)
	{
		a=x;
	}	
}

class B extends A							//Sub Class
{
	int b;
	void setb(int y)
	{
		y=b;
	}
}

class C extends B							//..Sub Class
{
	int c;
	
	void setc(int z)
	{
		c=z;
	}

	void disp()
	{
		System.out.println("A = "+a+"\nB = "+b+"\nC = "+c);
	}
}




						//Main Class
public class single_multihert_03 {
	public static void main(String args[])
	{
		
		System.out.println("\n_____-:Single & Multilevel Inheritance :-_____");		
		C obj=new C();
		obj.a = 10;
		obj.b = 20;
		obj.c = 30;
		obj.disp();
	}
}
  

