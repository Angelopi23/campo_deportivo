
package principal;

import config.Conexion_Datos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import javax.swing.table.DefaultTableModel;

public class enviaReser extends reserCampo{
    private Conexion_Datos cn;
    
    
    
    private int id_turno;
    private int id_horas;
    private int id_horario;

    public enviaReser() {}

    public enviaReser( int id, String campo_seleccionado, String nombres, String apellidos, String dni, String celular,int id_turno, int id_horas, String total_pagar, String fecha,  int id_horario, String forma_pago, String captura_img) {
        super(id, campo_seleccionado, nombres, apellidos, dni, celular, id_turno, id_horas, total_pagar, fecha, id_horario, forma_pago, captura_img);
        
        this.id_turno = id_turno;
        this.id_horas = id_horas;
        this.id_horario = id_horario;
    }

   
    
  

    public int getId_turno() {
        return id_turno;
    }

    public void setId_turno(int id_turno) {
        this.id_turno = id_turno;
    }

    public int getId_horas() {
        return id_horas;
    }

    public void setId_horas(int id_horas) {
        this.id_horas = id_horas;
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }
    
    public DefaultTableModel leer(){
        DefaultTableModel tabla =new DefaultTableModel();
        
        try{
            cn=new Conexion_Datos();
            cn.abrir_conexion();
            String query ="SELECT r.id, r.campo_seleccionado, r.nombres, r.apellidos, r.dni, r.celular,r.id_turno, h.hora, h.id_horas, r.total_pagar, r.fecha,ho.horario, ho.id_horario, r.forma_pago, r.captura_img FROM reservas as r INNER JOIN horas as h ON r.id_horas = h.id_horas INNER JOIN horarios as ho ON r.id_horario = ho.id_horario;";
            ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
            String encabezado[] ={"id","campo_seleccionado","nombres","apellidos","dni","celular","id_turno","hora","id_hora","total_pagar","horario","id_horario","fecha","forma_pago","captura_img"};
            tabla.setColumnIdentifiers(encabezado);
            String datos[] = new String[15];
            while(consulta.next()){
                datos[0]=consulta.getString("id");
                datos[1]=consulta.getString("campo_seleccionado");
                datos[2]=consulta.getString("nombres");
                datos[3]=consulta.getString("apellidos");
                datos[4]=consulta.getString("dni");
                datos[5]=consulta.getString("calular");
                datos[6]=consulta.getString("id_turno");
                datos[7]=consulta.getString("hora");
                datos[8]=consulta.getString("id_horas");
                datos[9]=consulta.getString("total_pagar");
                datos[10]=consulta.getString("fecha");
                datos[11]=consulta.getString("horario");
                datos[12]=consulta.getString("id_horario");
                datos[13]=consulta.getString("forma_pago");
                datos[14]=consulta.getString("captura_img");
                tabla.addRow(datos);
                
                
            }
            
            cn.cerrar_conexion();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        
        return tabla;
    }
    
    @Override
    public int agregar(){
        int retorno=0;
     try{
      
      PreparedStatement parametro;    
      cn=new Conexion_Datos();
      String query="INSERT INTO reservas(campo_seleccionado,nombres,apellidos,dni,celular,id_turno,id_horas,total_pagar,fecha,id_horario, forma_pago,captura_img)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
      cn.abrir_conexion();
      parametro=(PreparedStatement)cn.conexionBD.prepareStatement(query);
      parametro.setString(1, getCampo_seleccionado());
      parametro.setString(2, getNombres());
      parametro.setString(3, getApellidos());
      parametro.setString(4, getDni());
      parametro.setString(5, getCelular());
      parametro.setInt(6, getId_turno());
      parametro.setInt(7, getId_horas());
      parametro.setString(8, getTotal_pagar());
      parametro.setString(9, getFecha());
      parametro.setInt(10, getId_horario());
      parametro.setString(11, getForma_pago());
      parametro.setString(12, getCaptura_img());
      
      retorno=parametro.executeUpdate();
      
      cn.cerrar_conexion();
      
      }catch(SQLException ex){
          System.out.println(ex.getMessage());
          retorno=0;
      } 
            
        return retorno;
    }

    
}
