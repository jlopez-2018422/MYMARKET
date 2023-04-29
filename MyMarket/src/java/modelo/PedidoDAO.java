package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public List listar(){
        String sql = "select * from pedidos";
        List<Pedido> listaPedido = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Pedido pe = new Pedido();
                pe.setCodigoPedido(rs.getInt(1));
                pe.setDescripcionPedido(rs.getString(2));
                pe.setFechaEntrada(rs.getString(3));
                pe.setCodigoProducto(rs.getInt(4));
                listaPedido.add(pe);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaPedido;
    }
    
    public int agregar(Pedido ped){
        String sql = "insert into Pedidos(descripcionPedido, fechaEntrada, codigoProducto) values(?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, ped.getDescripcionPedido());
            ps.setString(2, ped.getFechaEntrada());
            ps.setInt(3, ped.getCodigoProducto());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp; 
    }
    
    //BUSCAR POR CODIGO
     public Pedido listarCodigoPedido (int id){
        Pedido ped = new Pedido();
        String sql = "select * from Pedidos where codigoPedido = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                ped.setDescripcionPedido(rs.getString(2));
                ped.setFechaEntrada(rs.getString(3));
                ped.setCodigoProducto(rs.getInt(4));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
            return ped;
    }
     
     public int actualizar(Pedido ped){
        String sql = "update pedidos set descripcionPedido=?, fechaEntrada=?, codigoProducto=?  where codigoPedido=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, ped.getDescripcionPedido());
            ps.setString(2, ped.getFechaEntrada());
            ps.setInt(3, ped.getCodigoProducto());
            ps.setInt(4, ped.getCodigoPedido());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
     
     public void eliminar(int id){
         
         String sql = "delete from Pedidos where codigoPedido ="+id;
         try{
             con = cn.Conexion();
             ps = con.prepareStatement(sql);
             ps.executeUpdate();
         }catch(Exception e){
             e.printStackTrace();
         }
     }
    
    
  
}
