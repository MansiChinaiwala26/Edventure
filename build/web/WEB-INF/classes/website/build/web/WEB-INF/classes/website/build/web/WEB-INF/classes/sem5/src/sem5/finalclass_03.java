package sem5;
class A12									// A.java
{
	protected int a = 12;
	protected int b = 20;

}


final class B12 extends A12								// C.java
{
	B12()				//Constructor
 	{
		System.out.println("\n\t **** Final Class ****");
		System.out.println("\n\t class can't inherited ");
	}

	void addition()
	{
		int c = a + b;
		System.out.println("\n\t => Addition : "+c);	
	}
}	

class finalclass_03
{
	public static void main(String args[])
	{
		B12 obj = new B12();
		obj.addition();
	}
}			

