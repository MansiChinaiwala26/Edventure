package sem5;

    class returnobj
{
	int a,b;
	returnobj(int x , int y)						//Constructor
	{
		a = x; b = y;
	}
	
	returnobj display()							// Method display()
	{
		returnobj obj1 = new returnobj(12,120);					// Object	
		return obj1;
	}	
}
class returnobj_03
{
	public static void main(String args[])
	{
		returnobj obj2 = new returnobj(1200,12000);
		
		  returnobj obj3;							//Reference

		obj3 = obj2.display();
		
		System.out.println(obj2.a);
		System.out.println(obj2.b);
		
		System.out.println("\n\t -: Returning object :-");
		System.out.println(obj3.a);
		System.out.println(obj3.b);
	}
}

