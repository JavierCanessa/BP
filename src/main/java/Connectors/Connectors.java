
package Connectors;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connectors {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String vendor = "mysql";
    private String server = "node53405-buscadorpaulcardenas.jelastic.saveincloud.net";
    //private String server = "localhost";
    private String port = "3306";
    private String db = "listadop";
    private String params = "?serverTimezone=UTC";
    private String username = "root";
    private String password = "XoLay25VNo";
    //private String password = "";
    private String url = "jdbc:" + vendor + "://" + server + ":" + port + "/" + db + params;
    private Connection conn=null;
            
            
    public Connectors() {
    }
    
    public Connection getConnection(){
        
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }          
        return conn;
        
    }
}
