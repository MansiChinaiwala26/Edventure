package sem5;
public class mulicatch_03 {
    	public static void main(String args[])
	{
		int n1 = 10;
		int n2 = 0;
		int r = 0;
		int a[] = new int [5];
		
		try
		{
			a[0] = 0;
			a[1] = 1;
			a[2] = 2;
			a[3] = 3;
			a[4] = 4;
			a[5] = 5;
			r = n1/n2;
System.out.println("\n Result of Division : "+r);
		}

		catch(ArithmeticException e)
		{
			System.out.println("Divide By Zero");
		}
		
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array Out Of Bounds.");
		}
	}
}


