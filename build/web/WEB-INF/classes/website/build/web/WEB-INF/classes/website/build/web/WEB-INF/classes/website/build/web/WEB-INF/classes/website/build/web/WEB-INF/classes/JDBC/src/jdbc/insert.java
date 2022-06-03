package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class insert {

    public static void main(String[] args) {
        Connection cn = null;
        Statement st = null;
        try {
            String q = null;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "");
            q = "INSERT INTO register1 (Name,College,Address) "
                    + "VALUES ('Mahavir Swami College Of Polytechnic')";
            st = cn.createStatement();
            st.executeUpdate(q);
            System.out.println("Values inserted..");
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
