/*
 * This program is to validate the mail address
 * this class method used in the SendMail class....
 */
//date:04,05-Jan-2016....

package projectemail;

import java.io.BufferedReader;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Date;

public class Validation extends SendEmail 
{

    public Validation()
    {
        //this code is store the mail in file..
            try
            {
                //this code is for generat the file and  write the content...
                File file=new File("History.txt");

                if(!file.exists())
                {
                    file.createNewFile();
                }
                Date date=new Date();
                FileWriter filewriter=new FileWriter(file.getName(),true);
                BufferedWriter bufferedwriter=new BufferedWriter(filewriter);
                
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.write("Date: "+date.getDate());
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.write("From: "+from);
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.write("To: "+to);
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.write("Subject: "+subject);
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.write("Body: "+body);
                bufferedwriter.write(System.getProperty("line.separator"));
                bufferedwriter.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
    }
    
        //this code is for validate the mail address.................
        public static boolean isValidEmailAddress(String email)
        {
                boolean result = true;
                try 
                {
                    InternetAddress emailAddr = new InternetAddress(email);
                    emailAddr.validate();
                } 
                catch (AddressException ex)
                {
                    result = false;
                }
                return result;
        }
       
        //this is for read the History.txt
        public static void readFile()
        {
            BufferedReader br=null;
            try
            {
                String currentLine;
                br=new BufferedReader(new FileReader("History.txt"));                                 
                while((currentLine=br.readLine())!=null)
                {
                    System.out.println(currentLine);
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }    
         }
  }
