package sem5;
public class passbyvalue_03 {
	int a = 100;						//Result 
	void result()
	{
		a=a+100;					//Updated Result
		System.out.println("\n\t=>Result : "+a);	
	}
public static void main(String args[])
	{
		passbyvalue_03 obj1 = new passbyvalue_03();
		System.out.println("\n\t -: Before Updated Result :-");
		System.out.println("\t ===========================");
		System.out.println("\n\t=>Result : "+obj1.a+"\n");
			
		System.out.println("\n\t -: After Updated Result :-");
		System.out.println("\t ===========================");	
		obj1.result();

	}
}


