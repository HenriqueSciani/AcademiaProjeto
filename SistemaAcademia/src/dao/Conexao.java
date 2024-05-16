package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;

/**
 *
 * @author aluno
 */
public class Conexao {

    private static final String DRIVER = "MySQL Connector/J";
    private static final String URL = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL";
    private static final String USER = "root";
    private static final String PASS = "1234";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASS);
    }

    public static void closeConnection(Connection c) throws SQLException {
        if (c != null && !c.isClosed()) {
            c.close();
        }
    }

    public static void closeConnection(Connection c, PreparedStatement statment) throws SQLException {
        closeConnection(c);
        if (statment != null) {
            statment.close();
        }
    }
}