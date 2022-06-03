package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class update {

    public static void main(String[] args) {
        Connection cn = null;
        Statement st = null;
        try {
            String q = null;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registeration", "root", "");
             st = cn.createStatement();
            System.out.println("Connection Established..");
            q = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',"
                    + "Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',"
                    + "Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a', WHERE ID=15";
                    
            st.executeUpdate(q);
            System.out.println("Values updated..");
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
        }
    }
}
