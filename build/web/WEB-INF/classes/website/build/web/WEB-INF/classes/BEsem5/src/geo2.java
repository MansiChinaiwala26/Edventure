import java.util.Scanner;
interface shape2{
	
	double pi=3.14;
		Scanner sc=new Scanner(System.in);
	
	 void read();
	 void show();
	 
	
}
class rectangle2 implements shape2{
		double ans;
		double h,w;
		 public void read()
	{
		
		System.out.println("Enter Height:");
		h=sc.nextInt();
		System.out.println("Enter Width:");
		w=sc.nextInt(); 
		
		
	}
	public void show()
	{
		
		System.out.println("Height:"+h);
		System.out.println("Weight:"+w);
	}
	public void area()
	{
		System.out.println("--Rectangle--");
		ans=w*h;
		System.out.println("Area of Rectangle"+ans);
	}
}	
class circle2 implements shape2{
	double ans1,r;
   
   public void read()
	{
		
		System.out.println("Enter radius:");
		r=sc.nextInt();
		
		
	}
	public void show()
	{
		
		System.out.println("Radius:"+r);
	
	}
	public void area1()
	{
		System.out.println("--Circle--");
		ans1=pi*r*r;;
		System.out.println("Area of Circle"+ans1);
	}
}
class geo2{
	public static void main(String arg[]){
		rectangle2 s= new rectangle2();
		
		s.read();
		s.show();
		s.area();
		
		circle2 t=new circle2();
		
		t.read();
		t.show();
		t.area1();
		}
}
