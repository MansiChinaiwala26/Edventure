import java.applet.Applet;
import java.awt.*;
public class p1 extends Applet {

    public void paint(Graphics s) {
        Font f=new Font("times new roman",Font.BOLD,20);
        s.setColor(Color.red);
        s.fillOval(450, 250, 120, 120);
        s.setColor(Color.pink);
        s.setFont(f);
        s.drawString("Mansi", 485, 320);
    }
}
