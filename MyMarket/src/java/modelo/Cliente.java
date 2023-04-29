
package modelo;

public class Cliente {
    private int dpiCliente;
    private String nombresCliente;
    private String apellidosCliente;
    private String nitCliente;
    private String telefonoCliente;

    public Cliente() {
    }

    public Cliente(int dpiCliente, String nombresCliente, String apellidosCliente, String nitCliente, String telefonoCliente) {
        this.dpiCliente = dpiCliente;
        this.nombresCliente = nombresCliente;
        this.apellidosCliente = apellidosCliente;
        this.nitCliente = nitCliente;
        this.telefonoCliente = telefonoCliente;
    }

    public int getDpiCliente() {
        return dpiCliente;
    }

    public void setDpiCliente(int dpiCliente) {
        this.dpiCliente = dpiCliente;
    }

    public String getNombresCliente() {
        return nombresCliente;
    }

    public void setNombresCliente(String nombresCliente) {
        this.nombresCliente = nombresCliente;
    }

    public String getApellidosCliente() {
        return apellidosCliente;
    }

    public void setApellidosCliente(String apellidosCliente) {
        this.apellidosCliente = apellidosCliente;
    }

    public String getNitCliente() {
        return nitCliente;
    }

    public void setNitCliente(String nitCliente) {
        this.nitCliente = nitCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

  
    
}
