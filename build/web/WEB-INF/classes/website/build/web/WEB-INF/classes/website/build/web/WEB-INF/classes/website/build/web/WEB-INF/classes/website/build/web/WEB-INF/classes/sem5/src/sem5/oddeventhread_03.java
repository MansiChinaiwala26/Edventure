package sem5;
class odd_even extends Thread
{
	private int n;
	
	public odd_even(String name , int num)
	{
		super(name);
		this.n = num;
	}
	public void run()
	{
		for(int i=0 ; i<25 ;i++)
		{
			System.out.println(getName()+this.n);
			this.n += 2;
		}
	}
}

public class oddeventhread_03
{
	public static void main(String args[])
	{
		
		odd_even obj2 = new odd_even("Even Number Thread " ,2);
		odd_even obj1 = new odd_even("Odd  Number Thread " ,1);	

		obj1.start();
		obj2.start();
	}
}


