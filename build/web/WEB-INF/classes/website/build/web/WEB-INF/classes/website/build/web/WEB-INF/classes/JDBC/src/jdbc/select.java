package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class select {

    public static void main(String[] args) {
        Connection cn = null;
        Statement st = null;
        try {
            String q = null;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xlsx_db", "root", "");
            System.out.println("Connection Established..");
            st = cn.createStatement();
            q = "SELECT * FROM scolleges";
            System.out.println("Query:" + q);
            ResultSet rs = st.executeQuery(q);
            System.out.println("Values Selected..");
            System.out.println("Colleg_Name t\t\t\t\t\t\t  City");
            while (rs.next()) {
                String College_Name = rs.getString("College_Name");
                String City = rs.getString("City");
                System.out.println(College_Name + " \t " + City);

            }
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
