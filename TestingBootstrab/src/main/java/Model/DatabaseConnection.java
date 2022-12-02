package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection
{
    private static Connection connection = null;
    private static final String dbConnection = "jdbc:mysql://localhost:3306/EShipDB";
    private static final String dbUser = "root";
    private static final String dbPassword = "";
    private static Statement statement;

    public static Connection getConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbConnection, dbUser, dbPassword);
            connection.setAutoCommit(true);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return connection;
    }
    public static Statement getStatement(Connection connection)
    {
        try
        {
            statement = getConnection().createStatement();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return statement;
    }
}
