package modelo;

public class Pedido {
    private int codigoPedido;
    private String descripcionPedido;
    private String fechaEntrada;
    private int codigoProducto;

    public Pedido() {
    }

    public Pedido(int codigoPedido, String descripcionPedido, String fechaEntrada, int codigoProducto) {
        this.codigoPedido = codigoPedido;
        this.descripcionPedido = descripcionPedido;
        this.fechaEntrada = fechaEntrada;
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoPedido() {
        return codigoPedido;
    }

    public void setCodigoPedido(int codigoPedido) {
        this.codigoPedido = codigoPedido;
    }

    public String getDescripcionPedido() {
        return descripcionPedido;
    }

    public void setDescripcionPedido(String descripcionPedido) {
        this.descripcionPedido = descripcionPedido;
    }

    public String getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(String fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }
    
    
    
}
