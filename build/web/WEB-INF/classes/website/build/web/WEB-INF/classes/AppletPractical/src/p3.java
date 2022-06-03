import java.applet.Applet;
import java.awt.*;
public class p3 extends Applet implements Runnable {
    int i,h,w,time;
    public void init() {
        w=500;
        h=150;
        time=2500;
        Thread r1=new Thread(this);
        r1.start();
    }
    public void run(){
        try{
        for(i=0;i<=w;i++){
            Thread.sleep(time/w);
            repaint();
        }
    }
        catch(Exception e){
            
        }
    
}
    public void paint(Graphics s1){
        s1.setColor(Color.red);
        s1.drawRect(550, 280, w, h);
        s1.fillRect(550, 280, i, h);
    }
}
