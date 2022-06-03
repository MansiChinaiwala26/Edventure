package sem5;

class A2
{
	static int x =10;
}
class B2 extends A2
{
	int x = 15;
void display()
	{
System.out.println("\n Instance variable X  and Static variable X ");												System.out.println("\n=> value of Instance variable X in Class B : "+x);			System.out.println("\n=> Value of Static varialbe X In Class A :"+super.x);
}
}
class staticvar_03
{
public static void main(String args[])
	{
		B2 obj1=new B2();
obj1.display();
	}
    
}
