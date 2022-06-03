package sem5;
public class maxno_03 {
    public static void main(String[] args) {
        int a=10,b=20,c=30;
        if(a>b){
            if(a>c){
                System.out.println("A is Maximun");
            }
            else{
                System.out.println("A is Minimun");
            }
        }
        else{
            if(b>c){
                System.out.println("B is Maximun");
            }
            else{
                System.out.println("C is Maximun");
            }
        }
    }  
}
