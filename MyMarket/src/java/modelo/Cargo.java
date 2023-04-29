/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author damia
 */
public class Cargo {
    private int codigoCargo;
    private String nombreCargo;
    private String descripcionCargo;

    public Cargo() {
    }

    public Cargo(int codigoCargo, String nombreCargo, String descripcionCargo) {
        this.codigoCargo = codigoCargo;
        this.nombreCargo = nombreCargo;
        this.descripcionCargo = descripcionCargo;
    }

    public int getCodigoCargo() {
        return codigoCargo;
    }

    public void setCodigoCargo(int codigoCargo) {
        this.codigoCargo = codigoCargo;
    }

    public String getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(String nombreCargo) {
        this.nombreCargo = nombreCargo;
    }

    public String getDescripcionCargo() {
        return descripcionCargo;
    }

    public void setDescripcionCargo(String descripcionCargo) {
        this.descripcionCargo = descripcionCargo;
    }
}
