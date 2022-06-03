package sem5;
public class throws_03 {
	float fund;
	void deposit(float amount)
	{
		fund = amount;
		System.out.println("\t => fund : "+ fund);
	}

	void withdraw(float amount) throws Exception
	{
		float new_fund = fund - amount;
		
		if(new_fund < 500)
		{
			throw new Exception("\t => Not Sufficient Fund.");
		}
		else
		{
			fund = new_fund;
			System.out.println("\t => Fund after withdraw :"+ fund);
		}
	}
 public static void main(String args[])
 {
	throws_03 obj = new throws_03();
	obj.deposit(1000);
	try
	{
		float money1 = 400;
		System.out.println("\t =>withdrawing amount : "+ money1);
		obj.withdraw(money1);
			
		float money2 = 300;
		System.out.println("\t =>withdrawing amount : "+ money2);
		obj.withdraw(money2);
	}

	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}

 }
}


