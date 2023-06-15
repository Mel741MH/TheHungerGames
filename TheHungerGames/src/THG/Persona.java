package THG;

public class Persona {
    private int id;
    private String curp;
    private String nombre;
    private String sexo;
    private int edad;
    private boolean activo;

    //Constructor vacío, para inicializar el objeto
    public Persona() {
    }
    
    public Persona(String curp, String nombre, String sexo, int edad) {
        this.curp = curp;
        this.nombre = nombre;
        this.sexo = sexo;
        this.edad = edad;
        this.activo = activo;
    }
    
    //Sobrecarga de constructor, utiliza el mismo nombre de un constructor ya existen pero cambio parametros
    public Persona(int id, String curp, String nombre, String sexo, int edad) {
        this.id = id;
        this.curp = curp;
        this.nombre = nombre;
        this.sexo = sexo;
        this.edad = edad;
        this.activo = activo;
    }
    
    //Getter y Setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    //Devuelve una cadena con los valores de todos los atributos
    @Override
    public String toString() {
        return "Persona{" + "id=" + id + ", curp=" + curp + ", nombre=" + nombre + ", sexo=" + sexo + ", edad=" + edad + ", activo=" + activo +'}';
    }
    
}
