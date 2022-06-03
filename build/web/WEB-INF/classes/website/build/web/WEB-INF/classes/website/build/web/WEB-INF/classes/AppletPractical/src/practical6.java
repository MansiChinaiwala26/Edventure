import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class practical6 extends Applet implements MouseListener {
int i = 180, x = 190, y = 126;
    public void init() 
    {
        setSize(500, 300);
        addMouseListener(this);
    }
    
    public void mousePressed(MouseEvent e) 
    {
        i = 360;
        x = 192;
        y = 156;
        repaint();
        
    }
    public void mouseReleased(MouseEvent e)
    {
        i = 180;
        x = 190;
        y = 126;
        repaint();
    }
    public void mouseClicked(MouseEvent e)
    {
        repaint();
    
    }
    public void mouseExited(MouseEvent e) {
    }
    
    public void mouseEntered(MouseEvent e) {
    }
    public void paint(Graphics B) {
        
        B.setColor(Color.black);
        B.fillOval(150, 50, 200, 200);
        
        B.setColor(Color.pink);
        B.fillOval(152, 52, 196, 196);
        
        B.setColor(Color.black);
        B.fillOval(187, 100, 40, 50);
        B.setColor(Color.black);
        B.fillOval(277, 100, 40, 50);
        
        B.setColor(Color.red);
        B.fillArc(x, y, 120, 100, i, 180);
        B.setColor(Color.pink);
        B.fillArc(x+5, y+5, 110, 90, i, 180);
    }  
}
