/*
 * This program is to perform the email sending proccess 
 * also mantain the history of the mail ...
 */
//date:03,04,05-Jan-2016...


package projectemail;

import java.util.Scanner;

public class ProjectEmail {
        
    public static void main(String[] args) {
       
        Scanner s=new Scanner(System.in);
        System.out.println("1 for Send the Mail.");
        System.out.println("2 for check the history.");
        System.out.println("3 for exit!.");
       
        System.out.println("Enter your choice: ");
        int ch=s.nextInt();
        
        switch(ch)
        {
            case 1:
                    Validation valid=new Validation();
            break;
                
            case 2:
                Validation.readFile();
            break;
            
            case 3:
                System.out.println("Thank you");
            break;
        }
    }
}

