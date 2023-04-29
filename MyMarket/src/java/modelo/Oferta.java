package modelo;

public class Oferta {
    private int codigoOferta;
    private int porcentajeDescuento;
    private int codigoProducto;

    public Oferta() {
    }

    public Oferta(int codigoOferta, int porcentajeDescuento, int codigoProducto) {
        this.codigoOferta = codigoOferta;
        this.porcentajeDescuento = porcentajeDescuento;
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoOferta() {
        return codigoOferta;
    }

    public void setCodigoOferta(int codigoOferta) {
        this.codigoOferta = codigoOferta;
    }

    public int getPorcentajeDescuento() {
        return porcentajeDescuento;
    }

    public void setPorcentajeDescuento(int porcentajeDescuento) {
        this.porcentajeDescuento = porcentajeDescuento;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }
    
    
}
