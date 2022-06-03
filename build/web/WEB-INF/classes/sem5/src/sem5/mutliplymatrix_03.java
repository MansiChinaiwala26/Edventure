package sem5;
import java.util.Scanner;
public class mutliplymatrix_03 {
      public static void main(String args[])

    {
        int n,i,j;
        Scanner input = new Scanner(System.in);
        System.out.println("Enter matrices");
        n = input.nextInt();
        int[][] a = new int[10][10];
        int[][] b = new int[10][10];
        int[][] c = new int[10][10];
        System.out.println("Enter the 1st martix \n");
        for ( i = 0; i < n; i++)
        {
            for ( j = 0; j < n; j++)
            {
                a[i][j] = input.nextInt();
            }
        }
        System.out.println("Enter 2nd martix\n");
        for ( i = 0; i < n; i++){
            for ( j = 0; j < n; j++)
            {
                b[i][j] = input.nextInt();
            }
        }
        System.out.println("Multiplying the matrices...");
        for ( i = 0; i < n; i++)
        {
            for ( j = 0; j < n; j++)

            {
                for (int k = 0; k < n; k++)
                {
                    c[i][j] = c[i][j] + a[i][k] * b[k][j];
                }
            }
        }
        System.out.println("The product is:");
        for ( i = 0; i < n; i++)
        {
            for ( j = 0; j < n; j++)
            {
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }
        input.close();
    }
}
