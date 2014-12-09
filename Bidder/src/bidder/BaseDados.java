
package bidder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class BaseDados {
    Connection connection;

public BaseDados() throws SQLException, ClassNotFoundException {
    Class.forName ("org.gjt.mm.mysql.Driver");
    
    String serverName = "localhost";
    String mydatabase = "leiloes";
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; 

    String username = "user_registo";
    String password = "";
    connection = DriverManager.getConnection(url, username, password);
  }
}

