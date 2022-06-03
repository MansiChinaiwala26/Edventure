package sem5;
public class maxarray_03 {
    public static void main(String args[])
{
int n1=123,n2=174,n3=500,n4=199,n5=900; 
		int m1,m2,m3,m4,largest_1,second_Largest_1; 
		System.out.println("\n\tFind Second Maximum Number :-");
System.out.println("\n"+"Number 1 = "+n1+"\nNumber 2 = "+n2+"\nNumber 3 = "+n3+"\nNumber 4 = "+n4+"\nNumber 5 = "+n5); 
		largest_1=max1(n1,n2,n3,n4,n5); 
		System.out.println("\n\tMaximum Number ="+largest_1); 
		if(largest_1 == n1) 
		 { 
			n1=n2; 
			n2=n3; 
			n3=n4; 
			n4=n5; 
		 } 
		else if(largest_1 == n2) 
		 {	
			n1=n1; 
			n2=n3; 
			n3=n4; 
			n4=n5; 
		 } 
		else if(largest_1 == n3) 
		 { 
			n1=n1; 
			n2=n2; 
			n3=n4; 
			n4=n5; 
		 } 
else if(largest_1 == n4) 
		 { 
			n1=n1; 
			n2=n2; 
			n3=n3; 
			n4=n5; 
		 } 
			else if(largest_1 == n5) 
		 { 
			n1=n1; 
			n2=n2; 
			n3=n3; 
			n4=n4; 
		 } 
		second_Largest_1=max2(n1,n2,n3,n4); 
		System.out.println("\t2nd Maximum Number="+second_Largest_1); 

		if(second_Largest_1==n1) 
		 { 
			n1=n2; 
			n2=n3; 
			n3=n4; 
		 } 

		else if(second_Largest_1 == n2) 
		 { 
			n1=n1; 
			n2=n3; 
			n3=n4; 
		 } 

		else if(second_Largest_1 == n3) 
		 { 
			n1=n1; 
			n2=n2; 
			n3=n4; 
		 } 

		else if(second_Largest_1 == n4) 
		 { 
			n1=n1; 
			n2=n2; 
			n3=n3; 
		 } 
	}
static int max2(int a,int b,int c,int d) 
	{ 
		int m1,m2,m3; 
		m1=max(a,b); 
		m2=max(m1,c); 
		m3=max(m2,d); 
		return m3;
	}

	static int max1(int n1,int n2,int n3,int n4,int n5) 
	{ 
		int m1,m2,m3,m4,m5,l; 
		m1=max(n1,n2); 
		m2=max(n3,n4); 
		m3=max(m1,n5); 
		m4=max(m2,n5); 
		l=max(m3,m4); 
		return l; 
	} 

	static int max(int a,int b) 
	{ 
		if(a>b) 
{
		return a; 
}
		else
{
		return b;
}

    }

}


