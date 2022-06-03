package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class delete {

    public static void main(String[] args) {
        Connection cn = null;
        Statement st = null;
        try {
            String q = null;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xlsx_db", "root", "");
            System.out.println("Connection Established..");
            q = "DELETE FROM scolleges WHERE(College_Name = 'Mahavir Swami College Of Polytechnic')";
            st = cn.createStatement();
            st.executeUpdate(q);
            System.out.println("Values Deleted..");
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
