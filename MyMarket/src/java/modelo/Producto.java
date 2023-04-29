package modelo;


public class Producto {
    private int codigoProducto;
    private String nombreProducto;
    private Double precioProducto;
    private int stock;
    private String descripcionProducto;
    private int codigoCategoria;

    public Producto() {
    }

    public Producto(int codigoProducto, String nombreProducto, Double precioProducto, int stock, String descripcionProducto, int codigoCategoria) {
        this.codigoProducto = codigoProducto;
        this.nombreProducto = nombreProducto;
        this.precioProducto = precioProducto;
        this.stock = stock;
        this.descripcionProducto = descripcionProducto;
        this.codigoCategoria = codigoCategoria;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public Double getPrecioProducto() {
        return precioProducto;
    }

    public void setPrecioProducto(Double precioProducto) {
        this.precioProducto = precioProducto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public int getCodigoCategoria() {
        return codigoCategoria;
    }

    public void setCodigoCategoria(int codigoCategoria) {
        this.codigoCategoria = codigoCategoria;
    }
    
    
}
