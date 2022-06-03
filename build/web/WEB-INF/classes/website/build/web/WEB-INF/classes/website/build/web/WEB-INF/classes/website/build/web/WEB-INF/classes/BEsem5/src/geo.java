import java.util.Scanner;
class shape{
	double h,w,b;
		Scanner sc=new Scanner(System.in);
	
	
	
	
}
class rectangle extends shape{
		double ans;
		public void get_rect()
	{
		
		
		System.out.println("Enter Width:");
		w=sc.nextInt(); 
		System.out.println("Enter Height:");
		h=sc.nextInt(); 
		
		
	}
	public void area()
	{
		System.out.println("--Rectangle--");
		ans=w*h;
		System.out.println("Area of Rectangle"+ans);
	}
}	
class triangle extends shape{
	double ans1;
  
   public void get_tri()
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
		ans1=0.5*b*h;
		System.out.println("Area of triangle"+ans1);
	}
}
class geo{
	public static void main(String arg[]){
		triangle s= new triangle();
		
		s.get_tri();
		s.area();
		
		rectangle t=new rectangle();
		
		t.get_rect();
		t.area();
		}
}
