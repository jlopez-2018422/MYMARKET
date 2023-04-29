package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author puchi
 */
public class ClienteDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int client;
    
    public List listar(){
        String sql = "Select * from Clientes";
        List<Cliente> listaClientes = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setDpiCliente(rs.getInt(1));
                cli.setNombresCliente(rs.getString(2));
                cli.setApellidosCliente(rs.getString(3));
                cli.setNitCliente(rs.getString(4));
                cli.setTelefonoCliente(rs.getString(5));
                listaClientes.add(cli);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaClientes;
        
    }
     
    public int agregar(Cliente clie){
        String sql ="Insert into Clientes(DpiCliente, nombresCliente, apellidosCliente, nitCliente, telefonoCliente) values (?, ?, ?, ?, ?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, clie.getDpiCliente());
            ps.setString(2, clie.getNombresCliente());
            ps.setString(3, clie.getApellidosCliente());
            ps.setString(4, clie.getNitCliente());
            ps.setString(5, clie.getTelefonoCliente()); 
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro" + e);
        }
        return client;
    }
    
     public Cliente listarCodigoCliente(int id){
        //insertar el objeto a devolver
        Cliente cl = new Cliente();
        String sql = "Select * from clientes where dpiCliente = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cl.setDpiCliente(rs.getInt(1));
                cl.setNombresCliente(rs.getString(2));
                cl.setApellidosCliente(rs.getString(3));
                cl.setNitCliente(rs.getString(4));
                cl.setTelefonoCliente(rs.getString(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return cl; 
    }
     
     
     public int actualizar(Cliente cli){
         String sql = "update clientes set nombresCliente= ?, apellidosCliente=?, nitCliente=?, telefonoCliente=? where  dpiCliente=?";
         try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cli.getNombresCliente());
            ps.setString(2, cli.getApellidosCliente());
            ps.setString(3, cli.getNitCliente());
            ps.setString(4, cli.getTelefonoCliente());
            ps.setInt(5, cli.getDpiCliente());
            ps.executeUpdate();
         }catch(Exception e){
             e.printStackTrace();
         }
         return client;
     }
     
     
     
     
    
    public void eliminar(int id){
        String sql = "delete from Clientes where dpiCliente="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
     
}