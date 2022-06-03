import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;


 public class practical5 extends Applet implements ActionListener {
    Button b;
    public void setSize(int width, int height) {
        super.setSize(width, height);
    }
    public void init() {
        b=new Button("start");
        b.addActionListener(this);
        add(b);       
    } 
    public void actionPerformed(ActionEvent e) {
        if(b.getLabel().equals("start"))
              
        {
             b.setSize(100,50);
        
        b.setVisible(true);
            b.setLabel("stop");
            
        }
        else{
             b.setSize(100,50);
        
        b.setVisible(true);
            b.setLabel("start");
        }
        
    }
}

 
   