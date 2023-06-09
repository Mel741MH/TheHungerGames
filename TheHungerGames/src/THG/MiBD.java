package THG;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MiBD {
    
    private static String user = "postgres"; //User de la BD
    private static String pswd = "1234567"; //Password de la BD
    private static String bd = "THG"; //Nombre de la BD
    private static String server = "jdbc:postgresql://localhost:5432/"+bd; //Llamando a nuestro server
    private static String driver = "org.postgresql.Driver";//Driver que permite conectarse con PostgreSQL
    private static Connection con = null; //Para verificar la conexión
   
    
    public MiBD() {
        try {
            Class.forName(driver);
            con = (Connection)DriverManager.getConnection(server, user, 
                            pswd);

            if(con != null) {
                    System.out.println("La conexión a la BD se realizo al 100%");
            }
        }
        catch(SQLException ex) {
            System.out.println("Error al intentar conectarse a la BD "+ server);
        }
        catch(ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }
    
    public Connection getConnection() {
        //Connection connection = null;
        try {
            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(server, user, pswd);
            //    JOptionPane.showMessageDialog(null,"Conexion Exitosa!!!");
        } catch (Exception e) {
            System.out.println("Error al intentar conectarse a la BD "+ server);
        }
        return con;
    }

    public void close(ResultSet rs) {
        try {
            rs.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public ResultSet getQuery(String query) {
        ResultSet result = null;

        try {
            Statement statement = con.createStatement();
            result=statement.executeQuery(query);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public void setQuery (String query) {
        Statement state = null;
        try {
            state = (Statement) con.createStatement();
            state.executeQuery(query);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}