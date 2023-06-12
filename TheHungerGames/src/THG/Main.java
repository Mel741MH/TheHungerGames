package THG;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {
    public static void main (String[] args) {
        
        // Creamos una instancia llamado conexion de la clase MiBD
        MiBD conexion =  new MiBD();
        
        // El conjunto de resultados (result set) que obtenemos al ejecutar la consulta SQL (select)
        ResultSet result;

        String curp,nombre,sexo;
        int id, edad;
        
        // conexion.getQuery() ejecuta el método getQuery que se encuentra en la clase MiBD.
        // El parámetro que le pasamos ("select * from persona") es la consulta SQL que ejecutamos en
        // la base de datos y que nos proporciona un conjunto de resultados (result set)
        result = conexion.getQuery("select * from persona");
        
        try {
            while(result.next()) {
                id= result.getInt("id");
                curp = result.getString("curp");
                nombre = result.getString("nombre");
                sexo = result.getString("sexo");
                edad = result.getInt("edad");
                
                /* Imprime los datos de esas columnas para validar si la conexión
                se realizó correctamente
                
                System.out.println (id);
                System.out.println (curp);
                System.out.println(nombre);
                System.out.println(sexo);
                System.out.println(edad);
                */
                
            }
        }
        catch (SQLException e) {
        }

    }
}

