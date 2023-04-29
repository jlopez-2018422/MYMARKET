package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
     public List listar(){
        String sql = "Select * from Productos";
        List<Producto> listaProducto = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setCodigoProducto(rs.getInt(1));
                pr.setNombreProducto(rs.getString(2));
                pr.setPrecioProducto(rs.getDouble(3));
                pr.setStock(rs.getInt(4));
                pr.setDescripcionProducto(rs.getString(5));
                pr.setCodigoCategoria(rs.getInt(6));
                listaProducto.add(pr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaProducto;
    }
   public int agregar(Producto pr){
        String sql = "insert into Productos (nombreProducto, precioProducto, stock,descripcionProducto,codigoCategoria) values(?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pr.getNombreProducto());
            ps.setDouble(2, pr.getPrecioProducto());
            ps.setInt(3, pr.getStock());
            ps.setString(4, pr.getDescripcionProducto()); 
            ps.setInt(5, pr.getCodigoCategoria());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp;
    }
    
  
    
    public int actualizar(Producto pr){
        String sql = "update productos set nombreProducto = ?, precioProducto = ?, stock = ?, descripcionProducto = ?, codigoCategoria = ? where codigoProducto = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pr.getNombreProducto());
            ps.setDouble(2, pr.getPrecioProducto());
            ps.setInt(3, pr.getStock());
            ps.setString(4, pr.getDescripcionProducto());
            ps.setInt(5, pr.getCodigoCategoria());
            ps.setInt(6, pr.getCodigoProducto());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    }
    
    public void eliminar(int id){
        String sql = "delete from Productos where codigoProducto ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
       public Producto listarCodigoProducto(int id){
        Producto pro = new Producto();
        String sql = "Select * from Productos where codigoProducto = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
               pro.setNombreProducto(rs.getString(2));
                pro.setPrecioProducto(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setDescripcionProducto(rs.getString(5));
                pro.setCodigoCategoria(rs.getInt(6));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return pro;
    }
    }
    

