package sem5;
class mythread extends Thread
{
	mythread(String s)
	{
		super(s);
		start();
	}

	public void run()
	{
		for(int i = 0 ; i < 5 ; i++)
		{
			System.out.println(Thread.currentThread().getName());
	
			try
			{
				if(Thread.currentThread().getName() == "Thread 1")
					Thread.sleep(2000);
				else
					Thread.sleep(4000);		
			}
			catch(Exception e)
			{
				System.out.println(e);	
			}
		}
	}
}
public class multithread_03 {
    	public static void main(String args[])
	{
		System.out.println("Thread Name :"+Thread.currentThread().getName());
		mythread obj  = new mythread("Thread 1");
		mythread obj1 = new mythread("Thread 2");
	}
}

