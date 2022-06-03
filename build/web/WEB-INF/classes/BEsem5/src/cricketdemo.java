
import java.util.Scanner;
class player{
	String name;
	String team;
	int age;
	Scanner sc=new Scanner(System.in);
	public void get()
	{
		System.out.println("Enter Player name:");
		name=sc.next();
		System.out.println("Enter Player team:");
		team=sc.next();
		System.out.println("Enter player age:");
		age=sc.nextInt(); 
	}
	public void show()
	{
		System.out.println("Player name:"+name);
		System.out.println("Player team:"+team);
		System.out.println("Player age:"+age);
	}
}
class cricketplayer extends player{
	String category;
	}
class batsman extends cricketplayer{
	
	
	int score;
	int matchplayed;
	Scanner sc=new Scanner(System.in);
	public void get1()
	{
		
		System.out.println("Enter player score:");
		score=sc.nextInt(); 
		System.out.println("Enter player matchplayed:");
		matchplayed=sc.nextInt();  
	}
	public void show1()
	{
		
		System.out.println("Player score:"+score);
		System.out.println("No of match played:"+matchplayed);
	}
	void averge()
	{
		int avg;
		avg=score/matchplayed;
		System.out.println("Average:"+avg);
		
	}
}
class bowler extends cricketplayer{
	
	int score1;
	int matchplayed1;
	Scanner sc=new Scanner(System.in);
	public void get2()
	{
		
		System.out.println("Enter player score:");
		score1=sc.nextInt(); 
		System.out.println("Enter player matchplayed:");
		matchplayed1=sc.nextInt();  
	}
	public void show2()
	{
		
		System.out.println("Player score:"+score1);
		System.out.println("No of match played:"+matchplayed1);
	}
	void averge1()
	{
		int avg1;
		avg1=score1/matchplayed1;
		System.out.println("Average:"+avg1);
		
	}
}
class cricketdemo{
	public static void main(String args[])
	{
		batsman b1=new batsman();
		bowler b=new bowler();
		int choice;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your choice");
		choice=sc.nextInt();  
		switch(choice){
		
		case 1: b1.get();
				b1.show();
				b1.get1();
				b1.show1();
				break;
		
		
		case 2: b.get();
				b.show();
				b.get2();
				b.show2();
		
		default: System.out.println("Not avaiable");
	}
	}
}
