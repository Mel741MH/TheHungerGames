package THG;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {
    public static void main (String[] args) {
        
        // Creamos una instancia llamado conexion de la clase MiBD
        MiBD conexion =  new MiBD();
        
        // El conjunto de resultados (result set) que obtenemos al ejecutar la consulta SQL (select)
        ResultSet result;

        
        // conexion.getQuery() ejecuta el método getQuery que se encuentra en la clase MiBD.
        // El parámetro que le pasamos ("select * from persona") es la consulta SQL que ejecutamos en
        // la base de datos y que nos proporciona un conjunto de resultados (result set)
        conexion.getConnection();
        result = conexion.getQuery("SELECT * FROM persona");
        
        try {
            while(result.next()) {
                
                Persona persona = new Persona();
                
                persona.setId(result.getInt("id"));
                persona.setCurp(result.getString("curp"));
                persona.setNombre(result.getString("nombre"));
                persona.setSexo(result.getString("sexo"));
                persona.setEdad(result.getInt("edad"));
                
                /* Imprime los datos de esas columnas para validar si la conexión
                se realizó correctamente*/
                
                System.out.println(persona.toString());
                
            }
        }
        catch (SQLException e) {
        }

    }
}

