package sem5;
interface p1						//Interface p1.java
{
	final int a =10;
	public void display_a();
}

interface p2						//Interface p2.java
{
	final int b =30;
	public void display_b();
}

interface p12 extends p1, p2			// interface p12
{
	final int c = 40;
	public void display_c();
}
//………………………………………………………………

class interface_03 implements p12					//Main Class Q
{

	
	
	public void display_a()
	{
		System.out.println("In P1 interface Value of A = "+a);
	}

	public void display_b()
	{
		System.out.println("In P2 interface Value of B = "+b);
	}

	public void display_c()
	{
		System.out.println("In P12 interface Value of C = "+c);
	}

	public static void main(String args[])
	{
		
		
		interface_03 obj1 = new interface_03();
		obj1.display_a();
		obj1.display_b();
		obj1.display_c();
			
	}
}
    

