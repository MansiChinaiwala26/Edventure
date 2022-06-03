package sem5;
    class person						//Super class
{
	String name;
int age;
String city;

	person(String a,int b,String c)  //constructor……
	{
		name = a;
age  = b;
city = c;				
	}
	
	void display()
	{
		System.out.println("Name : "+name+"\n Age : "+age+"\nCity : "+city);
	}
		
}
class student extends person				//Sub Class
{
	int per;

	student(String x,int y,String z,int p)//constructor……

	{
		super(x,y,z);
		per = p;
	}

	void display()
	{
		System.out.println("\n\t student's Details...");
		super.display();
		System.out.println("Percantage : "+per);
	}
}

class teacher extends person		//Sub Calss
{
	int salary;

	teacher(String i,int j,String k,int m)
	{
		super(i,j,k);
		salary = m;
	}

	void display()
	{
		System.out.println("\n\t Teacher's's Details...");
		super.display();
		System.out.println("salary : "+salary);
	}
}

class super_03							//main Calss
{
	public static void main(String args[])
	{
		System.out.println("\n\t Person Details....");
		person obj1 = new person("Ekta",17,"Surat");
		obj1.display();

		student  obj2=new student("Sakshi",17,"Surat",80);
		obj2.display();
		
		teacher obj3=new teacher("Jhanvi Patel",27,"Surat",10000);
		obj3.display();
	}
}


