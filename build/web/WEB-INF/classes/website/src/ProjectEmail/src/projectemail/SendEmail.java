/*
 /*
 * This program is to send the mail...
 */
//date:04-Jan-2016 & 05-Jan-2016....

package projectemail;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
public class SendEmail{
String from ,frompwd,d_host = "smtp.gmail.com",d_port = "465",to ,subject ,body ;

public SendEmail()
 {
            Scanner s=new Scanner(System.in); 

            System.out.println("From(Mail): ");
            from=s.nextLine();
            boolean fromAns=Validation.isValidEmailAddress(from);
            
            while(fromAns==false)
            {
                System.out.println("Plz enter valid email address..");
                System.out.println(" Re-enter From(Mail): ");
                from=s.nextLine();
                fromAns=Validation.isValidEmailAddress(from);
            }
            
            System.out.println("From(pwd): ");
            frompwd=s.nextLine();
            
            System.out.println("To: ");
            to=s.nextLine();
            boolean toAns=Validation.isValidEmailAddress(to);
            
            while(toAns==false)
            {
                System.out.println("Plz enter valid email address..");
                System.out.println("Re-enter To: ");
                to=s.nextLine();
                toAns=Validation.isValidEmailAddress(to);
            }
            
            System.out.println("Subject: ");
            subject=s.nextLine();
            
            System.out.println("Body: ");
            body=s.nextLine();

         if(fromAns==true && toAns==true)
         {
                Properties props = new Properties();
                props.put("mail.smtp.user", from);
                props.put("mail.smtp.host", d_host);
                props.put("mail.smtp.port", d_port);
                props.put("mail.smtp.starttls.enable","true");
                props.put("mail.smtp.auth", "true");
                //props.put("mail.smtp.debug", "true");
                props.put("mail.smtp.socketFactory.port", d_port);
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.socketFactory.fallback", "false");

                SecurityManager security = System.getSecurityManager();

            try
            {
                Authenticator auth = new SMTPAuthenticator();
                Session session = Session.getInstance(props, auth);
                //session.setDebug(true);

                MimeMessage msg = new MimeMessage(session);
                msg.setText(this.body);
                msg.setSubject(this.subject);
                msg.setFrom(new InternetAddress(from));
                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                Transport.send(msg);
            }
            catch (Exception mex)
            {
                mex.printStackTrace();
            }
        }
         
 }

private class SMTPAuthenticator extends javax.mail.Authenticator
{
        @Override
        public PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication(from, frompwd);
        }
    }
}