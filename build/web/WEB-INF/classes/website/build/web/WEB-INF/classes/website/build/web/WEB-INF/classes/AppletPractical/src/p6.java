import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
public class p6 extends Applet implements MouseListener {
    int i=180;
    int x=190;
    int y=126;
    public void init() {
        setSize(500,300);
        addMouseListener(this);
    }

    
    public void mouseClicked(MouseEvent e) {
        repaint();
        }

    public void mousePressed(MouseEvent e) {
        i=360;
        x=192;
        y=156;
        repaint();
       }

    public void mouseReleased(MouseEvent e) {
        i=180;
        x=190;
        y=156;
        repaint();
       }

    @Override
    public void mouseEntered(MouseEvent e) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void mouseExited(MouseEvent e) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void paint(Graphics g){
        
        g.setColor(Color.pink);
        g.fillOval(150, 50, 300, 200);
        g.setColor(Color.pink);
        g.fillOval(187, 100, 40, 50);
        
        g.setColor(Color.pink);
        g.fillOval(200, 100, 40, 50);
         g.setColor(Color.red);
        g.fillArc(x, y, 120, 100, i, 180);
         g.setColor(Color.pink);
        g.fillArc(x+5, y+4, 120, 100, i, 180);
        
       
        
        
    }
   }
