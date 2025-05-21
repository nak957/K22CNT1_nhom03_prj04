package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/prj04_nhom03_ql_noithat";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
                System.out.println("Kết nối đến cơ sở dữ liệu thành công!");
            } catch (ClassNotFoundException e) {
                System.err.println("Không tìm thấy driver MySQL: " + e.getMessage());
            } catch (SQLException e) {
                System.err.println("Lỗi kết nối cơ sở dữ liệu: " + e.getMessage());
            }
        }
        return connection;
    }

    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Đóng kết nối cơ sở dữ liệu thành công!");
            } catch (SQLException e) {
                System.err.println("Lỗi khi đóng kết nối: " + e.getMessage());
            }
        }
    }
}