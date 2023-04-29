/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author damia
 */
public class CargoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //<>
    //Listar
    public List listar(){
        String sql = "Select * from cargo";
        List <Cargo> listaCargo = new ArrayList();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Cargo ca = new Cargo();
                ca.setCodigoCargo(rs.getInt(1));
                ca.setNombreCargo(rs.getString(2));
                ca.setDescripcionCargo(rs.getString(3));
                listaCargo.add(ca);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        
        
        return listaCargo;
    }
    
    
    //Agregar
    public int agregar(Cargo car){
        String sql = "insert into Cargo (nombreCargo, descripcionCargo) values (?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, car.getNombreCargo());
            ps.setString(2, car.getDescripcionCargo());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();    
        }
        
        
        return resp;
    }
    
    
    //Buscar 
    public Cargo listarCodigoCargo(int id){
        Cargo car = new Cargo();
        String sql = "Select * from cargo where codigoCargo = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                car.setNombreCargo(rs.getString(2));
                car.setDescripcionCargo(rs.getString(3));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return car;
    }
    
    //Editar
    public int actualizar(Cargo car){
         String sql = "update cargo set nombreCargo = ?, descripcionCargo = ? where codigoCargo = ?";
         try{
             con = cn.Conexion();
             ps = con.prepareStatement(sql);
             ps.setString(1, car.getNombreCargo());
             ps.setString(2, car.getDescripcionCargo());
             ps.setInt(3, car.getCodigoCargo());
             ps.executeUpdate();
         }catch(Exception e){
             e.printStackTrace();
         }
        
        
        return resp;
    }
    
    //Eliminar
    public void eliminar(int id){
        String sql = "delete from Cargo where codigoCargo = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
