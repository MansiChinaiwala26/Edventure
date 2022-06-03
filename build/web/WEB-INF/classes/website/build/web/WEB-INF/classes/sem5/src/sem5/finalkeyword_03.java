package sem5;
public class finalkeyword_03 {
	final int a = 12;		// Final field
	void display()
	{
		System.out.println("\n\t -:Final Keyword :-");
		System.out.println("\t   =============");
		System.out.println("\n =>Final A value : "+a);
	}

	public static void main(String args[])
	{
		finalkeyword_03  obj1 = new finalkeyword_03();
		obj1.display();
	}	
}



