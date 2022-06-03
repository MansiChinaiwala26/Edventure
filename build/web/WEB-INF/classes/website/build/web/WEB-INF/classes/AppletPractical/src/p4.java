import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
public class p4 extends Applet implements MouseMotionListener {
    Point p;
    public void init() {
      addMouseMotionListener(this);  
    }

 
    public void mouseDragged(MouseEvent e) {
        p=e.getPoint();
        repaint();
       }

    
    public void mouseMoved(MouseEvent e) {
        p=e.getPoint();
        showStatus("X,Y Cordinate is:"+e.getX()+","+e.getY()+"");
        repaint();
        }
    public void paint(Graphics g){
        if(p!=null){
            g.fillRect(p.x, p.y, 50, 30);
        }
    }
}
