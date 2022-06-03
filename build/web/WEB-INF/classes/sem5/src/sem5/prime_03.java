package sem5;
public class prime_03 {
    public static void main(String[] args) {
        int i,j,max=10;
        System.out.println("Enter the number:"+max);
        System.out.println("Prime numbers: ");
        for(i=1;i<=max;i++){
            boolean iprime=true;
            for(j=2;j<i;j++){
                if(i%j==0){
                    iprime=false;
                    break;
                }
            }
            
            if(iprime){
                System.out.println(i+" ");
            }
        }
    }  
}
