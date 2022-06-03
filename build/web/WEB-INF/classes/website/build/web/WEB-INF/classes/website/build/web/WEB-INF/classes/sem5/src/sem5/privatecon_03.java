package sem5;

public class privatecon_03 {
    
	static int c = 0;
private privatecon_03()				//Default Constructor
	{
		c++;
	}
	
void show()
	{
System.out.println("\n\n\t => "+c +" Time instances or objects created using  Default Constructor..");
	}	
	
	public static void main(String args[])
	{
		privatecon_03 obj1 = new privatecon_03();
		privatecon_03 obj2 = new privatecon_03();
		privatecon_03 obj3 = new privatecon_03();
		privatecon_03 obj4 = new privatecon_03();

		obj4.show();	
	}
}

