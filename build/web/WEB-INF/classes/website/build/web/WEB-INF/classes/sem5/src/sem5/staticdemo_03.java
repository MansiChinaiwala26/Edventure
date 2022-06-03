package sem5;
public class staticdemo_03 {
    static {
        System.out.println("This is first static block");
    }

    public staticdemo_03(){
        System.out.println("This is constructor");
    }
    
    public static void main(String[] args){
        staticdemo_03 statEx = new staticdemo_03();
        staticdemo_03.staticMethod2();
    }

    static {
        staticMethod();
        System.out.println("This is second static block");
    }

    public static void staticMethod() {
        System.out.println("This is static method");
    }

    public static void staticMethod2() {
        System.out.println("This is static method2");
    }
}
  
