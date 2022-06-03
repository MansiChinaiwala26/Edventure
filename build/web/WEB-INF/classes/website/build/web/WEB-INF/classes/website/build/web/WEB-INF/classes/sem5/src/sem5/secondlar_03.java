package sem5;
import java.util.*;
public class secondlar_03 {
    public static void main(String[] args) {
        int max = 0;
        Scanner scan = new Scanner(System.in);
        System.out.println("How many numbers?");
        int n = scan.nextInt();
        System.out.println ("Write numbers: ");
        for(int i=0; i<n; i++){
            int c = scan.nextInt();
            if(c>=max && c%3 == 0){
                max = c;
                }
            else
                System.out.println("There is no such number.");
        }
        System.out.println(max);
    }
}

   

