
package sem5;


public class Sem5 {


    public static void main(String[] args) {
        int a[][];
        a=new int[3][3];
        int i,j,k=0;
        
        for(i=0;i<3;i++){
            for(j=0;j<i;j++){
                a[i][j]=k;
                k++;
            }
        }
        for(i=0;i<3;i++){
            for(j=0;j<i;j++){
                System.out.println(a[i][j]);
            }
        }
    }
    
}
