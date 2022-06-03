import java.util.Scanner;
abstract class shape1{
	double h,w,b;
		Scanner sc=new Scanner(System.in);
	
	abstract void get();
	
}
class rectangle1 extends shape1{
		double ans;
		 void get()
	{
		
		System.out.println("Enter Height:");
		h=sc.nextInt();
		System.out.println("Enter Width:");
		w=sc.nextInt(); 
		
		
	}
	public void area()
	{
		System.out.println("--Rectangle--");
		ans=w*h;
		System.out.println("Area of Rectangle"+ans);
	}
}	
class triangle1 extends shape1{
	double ans1;
   
   void get()
	{
		
		System.out.println("Enter Height:");
		h=sc.nextInt();
		System.out.println("Enter Width:");
		w=sc.nextInt(); 
		System.out.println("Enter Base:");
		b=sc.nextInt();
		
	}
	public void area()
	{
		System.out.println("--Triangle--");
		ans1=0.5*b*super.h;
		System.out.println("Area of triangle"+ans1);
	}
}
class geo1{
	public static void main(String arg[]){
		triangle1 s= new triangle1();
		
		s.get();
		s.area();
		
		rectangle1 t=new rectangle1();
		
		t.get();
		t.area();
		}
}
