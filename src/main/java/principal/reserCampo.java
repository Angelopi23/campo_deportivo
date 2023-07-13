
package principal;

abstract class reserCampo {
  
   private int id;
   private String campo_seleccionado,nombres,apellidos,dni,celular,total_pagar,fecha,forma_pago,captura_img;
   private int id_turno,id_horas,id_horario;

   public reserCampo(){} 
   
    public reserCampo(int id, String campo_seleccionado, String nombres, String apellidos,String dni, String celular, int id_turno,int id_horas, String total_pagar, String fecha, int id_horario, String forma_pago,String captura_img) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
         this.dni = dni;
        this.celular = celular;
        this.id_turno = id_turno;
        this.id_horas = id_horas;
        this.total_pagar = total_pagar;
        this.fecha = fecha;
        this.id_horario = id_horario;
        this.forma_pago = forma_pago;
        this.captura_img = captura_img;
        this.campo_seleccionado = campo_seleccionado;
    }

    public reserCampo(String dni, String celular) {
        this.dni = dni;
        this.celular = celular;
    }

    
    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

       public String getCampo_seleccionado() {
        return campo_seleccionado;
    }

    public void setCampo_seleccionado(String campo_seleccionado) {
        this.campo_seleccionado = campo_seleccionado;
    }
    
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

   

    public String getTotal_pagar() {
        return total_pagar;
    }

    public void setTotal_pagar(String total_pagar) {
        this.total_pagar = total_pagar;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
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

  

    public String getForma_pago() {
        return forma_pago;
    }

    public void setForma_pago(String forma_pago) {
        this.forma_pago = forma_pago;
    }
       public String getCaptura_img() {
        return captura_img;
    }

    public void setCaptura_img(String captura_img) {
        this.captura_img = captura_img;
    }
   
    
   public int agregar(){return 0;} 
   public int modificar(){return 0;} 
   public int eliminar(){return 0;} 
  
}
