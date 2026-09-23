package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static void main(String[] args) {
        getConnection();
    }
    private static final String URL = "jdbc:mysql://localhost:3306/agricycle_db";
    private static final String USER = "root";
    private static final String PASSWORD = "Msit@123";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Database Connected Successfully! ✅");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Database Connection Failed! ❌");
        }
        return conn;
    }
}