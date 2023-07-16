
package principal;

import config.Conexion_Datos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class tipoHorarios2 extends reserCampo{
    
    
    
    
    
    private String horario;
    private int id_horario;
  private Conexion_Datos cn;
  
    public tipoHorarios2() {}

    public tipoHorarios2(int id_horario, int id,String campo_seleccionado ,String nombres, String apellidos,String dni, String celular, int id_turno, int id_horas, String total_pagar, String fecha, String horario,String forma_pago,String captura_img) {
        super(id,campo_seleccionado ,nombres, apellidos,dni,celular, id_turno, id_horas, total_pagar, fecha, id_horario, forma_pago,captura_img);
        this.horario = horario;
        this.id_horario = id_horario;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }


    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }
    
    
    public HashMap horar2_horario(){
    HashMap<String,String> horar2= new HashMap();
        
        try{
        cn=new Conexion_Datos();
        String query_horario="SELECT id_horario as id, horario FROM horarios;";
        
        cn.abrir_conexion();
        ResultSet consulta =cn.conexionBD.createStatement().executeQuery(query_horario);
        while(consulta.next()){
            horar2.put(consulta.getString("id"), consulta.getString("horario"));
        }
        cn.cerrar_conexion();
        
        }catch(SQLException ex){
            System.out.println(ex.getMessage());  
        }
        return horar2;
    }
   
  /*  @Override
   public void agregar(){ }
    */
    
    
    
    
    
}
