/*
/*
 * This program is to send the mail...
 */
//date:04-Jan-2016 & 05-Jan-2016....
package projectemail;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class SendEmail {

    String d_host = "smtp.gmail.com", d_port = "465";

    public SendEmail(String message) {

        Properties props = new Properties();
        props.put("mail.smtp.user", "");
        props.put("mail.smtp.host", d_host);
        props.put("mail.smtp.port", d_port);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        //props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", d_port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

        SecurityManager security = System.getSecurityManager();

        try {
            Authenticator auth = new SMTPAuthenticator();
            Session session = Session.getInstance(props, auth);
            //session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject("Subject");
            msg.setFrom(new InternetAddress("123mansichinaiwala@gmail.com"));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress("mshaikh748@gamil.com"));
            Transport.send(msg);
        } catch (Exception mex) {
            mex.printStackTrace();
        }
    }

    private class SMTPAuthenticator extends javax.mail.Authenticator {

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("123mansichinaiwala@gmail.com", "edventure");
        }
    }
}