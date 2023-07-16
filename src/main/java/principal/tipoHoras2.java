
package principal;
import config.Conexion_Datos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class tipoHoras2 extends reserCampo {
    
    
    
 private String hora;
    private int id_horas;
  private Conexion_Datos cn;
    
    public tipoHoras2() {}

    public tipoHoras2(int id_horas, int id,String campo_seleccionado ,String nombres, String apellidos,String dni, String celular, int id_turno, String hora, String total_pagar, String fecha, int id_horario, String forma_pago,String captura_img) {
        super(id, campo_seleccionado ,nombres, apellidos,dni,celular, id_turno, id_horas, total_pagar, fecha, id_horario, forma_pago,captura_img);
        this.hora = hora;
        this.id_horas = id_horas;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    
    

    public int getId_horas() {
        return id_horas;
    }

    public void setId_horas(int id_horas) {
        this.id_horas = id_horas;
    }
  
    
  public HashMap h_horas(){
    HashMap<String,String> h2= new HashMap();
        
        try{
        cn=new Conexion_Datos();
        String query_horas="SELECT id_horas as id, hora FROM horas;";
        
        cn.abrir_conexion();
        ResultSet consulta =cn.conexionBD.createStatement().executeQuery(query_horas);
        while(consulta.next()){
            h2.put(consulta.getString("id"), consulta.getString("hora"));
        }
        cn.cerrar_conexion();
        
        }catch(SQLException ex){
            System.out.println(ex.getMessage());  
        }
        return h2;
    }
   
   /* @Override
   public void agregar(){ }
    */
    
    
    
}

