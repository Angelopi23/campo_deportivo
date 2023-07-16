
package principal;

import config.Conexion_Datos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
public class tipoTurno3 extends reserCampo{
    
    private String turno;
    private int id_turno;
    private Conexion_Datos cn;

    public tipoTurno3() {}

    public tipoTurno3(int id_turno ,int id,String campo_seleccionado ,String nombres, String apellidos,String dni, String celular, String turno, int id_horas, String total_pagar, String fecha, int id_horario, String forma_pago,String captura_img) {
        super(id, campo_seleccionado ,nombres, apellidos,dni,celular, id_turno, id_horas, total_pagar, fecha, id_horario, forma_pago,captura_img);
        this.turno = turno;
        this.id_turno = id_turno;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public int getId_turno() {
        return id_turno;
    }

    public void setId_turno(int id_turno) {
        this.id_turno = id_turno;
    }

    
    public HashMap drop3_sangre(){
    HashMap<String,String> drop3= new HashMap();
        
        try{
        cn=new Conexion_Datos();
        String query="SELECT id_turno as id, turno FROM turnos_campo3;";
        
        cn.abrir_conexion();
        ResultSet consulta =cn.conexionBD.createStatement().executeQuery(query);
        while(consulta.next()){
            drop3.put(consulta.getString("id"), consulta.getString("turno"));
        }
        cn.cerrar_conexion();
        
        }catch(SQLException ex){
            System.out.println(ex.getMessage());  
        }
        return drop3;
    }
   
   /* @Override
   public void agregar(){ }
    */
  
    
}
