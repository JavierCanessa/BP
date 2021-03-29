
package Connectors;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connectors {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String vendor = "mysql";
    private String server = "node62718-codigomivecino.in1.cloudjiffy.net";
    //private String server = "localhost";
    private String port = "3306";
    private String db = "listadop";
    private String params = "?serverTimezone=UTC";
    private String username = "root";
    private String password = "XQDryl36617";
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
