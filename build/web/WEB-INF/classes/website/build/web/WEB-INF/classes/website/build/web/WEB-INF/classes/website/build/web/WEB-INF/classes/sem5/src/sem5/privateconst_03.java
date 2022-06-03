package sem5;

public class privateconst_03
{
	static int c = 0;
	
private privateconst_03
()				//Default Constructor
	{
		c++;
	}
	
void show()
	{
System.out.println("\n\n\t => "+c +" Time instances or objects created using  Default Constructor..");
	}	
	
	public static void main(String args[])
	{
		privateconst_03 obj1 = new privateconst_03();
		privateconst_03 obj2 = new privateconst_03();
		privateconst_03 obj3 = new privateconst_03();
		privateconst_03 obj4 = new privateconst_03();

		obj4.show();	
	}
}

