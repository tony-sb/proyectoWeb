package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    Connection con;
    String url = "jdbc:mysql://localhost:3306/bd_carritocompras2";
    String user = "root";
    String pass = "";

    public Connection getConnection() throws ClassNotFoundException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return con;
    }
}
