package modelo;

import java.sql.Date;


public class Empleado {
   private int codigoEmpleado;
   private String nombresEmpleado;
   private String apellidosEmpleado;
   private String dpiEmpleado;
   private String fechaNacimiento;
   private String sexo;
   private String usuario;
   private String direccionEmpleado;
   private String telefonoEmpleado;
   private int codigoCargo;

    public Empleado() {
    }

    public Empleado(int codigoEmpleado, String nombresEmpleado, String apellidosEmpleado, String dpiEmpleado, String fechaNacimiento, String sexo, String usuario, String direccionEmpleado, String telefonoEmpleado, int codigoCargo) {
        this.codigoEmpleado = codigoEmpleado;
        this.nombresEmpleado = nombresEmpleado;
        this.apellidosEmpleado = apellidosEmpleado;
        this.dpiEmpleado = dpiEmpleado;
        this.fechaNacimiento = fechaNacimiento;
        this.sexo = sexo;
        this.usuario = usuario;
        this.direccionEmpleado = direccionEmpleado;
        this.telefonoEmpleado = telefonoEmpleado;
        this.codigoCargo = codigoCargo;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public String getNombresEmpleado() {
        return nombresEmpleado;
    }

    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    public String getApellidosEmpleado() {
        return apellidosEmpleado;
    }

    public void setApellidosEmpleado(String apellidosEmpleado) {
        this.apellidosEmpleado = apellidosEmpleado;
    }

    public String getDpiEmpleado() {
        return dpiEmpleado;
    }

    public void setDpiEmpleado(String dpiEmpleado) {
        this.dpiEmpleado = dpiEmpleado;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getDireccionEmpleado() {
        return direccionEmpleado;
    }

    public void setDireccionEmpleado(String direccionEmpleado) {
        this.direccionEmpleado = direccionEmpleado;
    }

    public String getTelefonoEmpleado() {
        return telefonoEmpleado;
    }

    public void setTelefonoEmpleado(String telefonoEmpleado) {
        this.telefonoEmpleado = telefonoEmpleado;
    }

    public int getCodigoCargo() {
        return codigoCargo;
    }

    public void setCodigoCargo(int codigoCargo) {
        this.codigoCargo = codigoCargo;
    }
}
