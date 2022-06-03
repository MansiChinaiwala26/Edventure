package sem5;
public class thiskey_03 {
          
        private int id;  
        private String name;  
          
        thiskey_03(int id,String name){  
        this.id = id;  
        this.name = name;  
        }  
        void display(){System.out.println(id+" "+name);}  
        public static void main(String args[]){  
         thiskey_03 s1 = new thiskey_03 (111,"Karan");  
         thiskey_03 s2 = new thiskey_03(222,"Aryan");  
        s1.display();  
        s2.display();  
    }  
    }  



