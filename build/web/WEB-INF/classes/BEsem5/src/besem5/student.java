package besem5;
import java.util.Scanner;

public class student {
    
   

    int roll_no;
    String name;
    String address;
    String branch;
    
    void getdata()
    {
      Scanner SC=new Scanner(System.in);
           
      System.out.print("Enter Roll Number: ");
          roll_no=SC.nextInt();      
     System.out.print("Enter Name: ");
         name=SC.next();  
       System.out.print("Enter Address: ");
          address=SC.next();  
       System.out.print("Enter Branch: ");
          branch=SC.next();  
          
          
    }
     void showdata()
     {
         System.out.println("Student roll_no:"+roll_no);
         System.out.println("Student name:"+name);
         System.out.println("Student address:"+address);
         System.out.println("Student branch:"+branch);
                 
     }            
}
class studentdeatils{
public static void main(String[] args) {
    student[] s = new student[2];
        s[0] = new student();
        s[1] = new student();

        //call functions
        System.out.println("--Details of 1 Student--");
        s[0].getdata();
        s[0].showdata();
        System.out.println("--Details of 2 Student--");
        s[1].getdata();
        s[1].showdata();

}
}
