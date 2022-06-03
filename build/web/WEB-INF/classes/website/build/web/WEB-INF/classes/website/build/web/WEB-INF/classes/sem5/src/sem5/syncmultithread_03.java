package sem5;
   class printing
{
	synchronized void printnumber(int n)
	{
		for(int j=n ; j>0 ; j--)
		{
			try
			{
			
				if(j == n/2)
				Thread.sleep(100);
			
			}

			catch(InterruptedException e)
			{
				;
			}

			System.out.println(" "+j);
		}
			
		System.out.println(" End\n");
	}
}

class Threadserve implements Runnable
{
	
int n;
	printing pt;
	Thread th;






	Threadserve(printing p ,int x)
	{
		n = x;
		pt = p;

		th = new Thread(this);
		th.start();
	}

	public void run()
	{
		pt.printnumber(n);
	}	
}

public class syncmultithread_03
{
	public static void main(String args[])
	{
		printing p = new printing();
		System.out.println("\n\t-: Synchronization of Threads :-");
		System.out.println("\t=================================");
		
		
		Threadserve th1 = new Threadserve(p,12);
		
		Threadserve th2 = new Threadserve(p,5);
		
		Threadserve th3 = new Threadserve(p,10);
	}
} 


 
