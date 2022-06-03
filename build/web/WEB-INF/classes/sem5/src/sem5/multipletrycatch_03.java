package sem5;
public class multipletrycatch_03 {
	public static void main(String args[])
	{

		System.out.println("\t Multiplae Try Block ");
		try
		{
			try
			{
				System.out.println("=> Division ");
				int b = (5/0);
			}
		
				catch(ArithmeticException e)
				{
					System.out.println(e);	
				}
			
					try
					{
						int a[] = new int[5];
						a[5] = 4;
					}
			
					catch(ArrayIndexOutOfBoundsException e)
					{
						System.out.println(e);	
					}
			
		System.out.println("Other statement...");
	
		}



		catch(Exception e)
		{
			System.out.println("handeled");	
		}
		
		System.out.println("Normal Flow...");
	}
	
}


