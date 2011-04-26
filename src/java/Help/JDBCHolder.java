/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Help;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author andrewfabian
 */
public abstract class JDBCHolder {

    public static Connection connectToDatabase() throws SQLException {

        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
        } catch (ClassNotFoundException ex) {
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>" + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }

        return conn;

    }
}
