package THG;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {
    public static void main (String[] args) {
        
        // Creamos una instancia/objeto llamado conexion de la clase MiBD
        MiBD conexion =  new MiBD();
        
        // El conjunto de resultados (result set) que obtenemos al ejecutar la consulta SQL (select)
        ResultSet result;

        int numHab;
        int porcentM;
        int porcentH;
        String ubicacion;
        String clima;
        String LugarInter;
        
        // conexion.getQuery() ejecuta el método getQuery que se encuentra en la
        // clase MiBD. El parámetro que le pasamos ("select * from clientes") es
        // la consulta SQL que ejecutamos en la base de datos y que nos proporciona
        // un conjunto de resultados (result set)
        result = conexion.getQuery("select * from Capitolio");
        try {
            while(result.next()) {
                numHab = result.getInt("num_habitantes"); // si el dato que queremos obtener es INT, usamos getInt(nombreColumna)
                porcentM = result.getInt("porcent_m"); // si el dato que queremos es texto, usamos getString(nombreColumna)
                porcentH = result.getInt("porcent_h");
                ubicacion = result.getString("ubicacion");
                clima = result.getString("clima");
                LugarInter = result.getString("lugar_inter");
                
                
                System.out.println (numHab);
                System.out.println(porcentM);
                System.out.println(porcentH);
                System.out.println(ubicacion);
                System.out.println(clima);
                System.out.println(LugarInter);
                
            }
        }
        catch (SQLException e) {
        }

    }
}

