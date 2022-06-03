package sem5;
public class this_03 {
    int a=120;
    void diplay()
    {
        int a=50;
        System.out.println("\t\tThis Keyword");
		System.out.println("Value of A : "+a);
		System.out.println("Value of A : "+this.a);  
    }
}
 class Private_mansi
  {
    private int a = 80;		// Declare Privatly
	void display(int a)		//Method
	{
            System.out.println("\t\tPrivate");
                System.out.println("Value of A : "+a);
		System.out.println("Value of A : "+this.a); 
	}
    public static void main(String args[])
	{
            this_03 obj =  new this_03 ();
            obj.diplay();
            Private_mansi obj2=new Private_mansi();
            obj2.display(100);
        }
}

