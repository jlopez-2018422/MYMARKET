package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author negro
 */
public class OfertaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    
    public List listar(){
        String sql = "Select * from ofertas";
        List<Oferta> listaOferta = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Oferta of = new Oferta();
                of.setCodigoOferta(rs.getInt(1));
                of.setPorcentajeDescuento(rs.getInt(2));
                of.setCodigoProducto(rs.getInt(3));
                listaOferta.add(of);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaOferta;
    }
    
    public int agregar(Oferta of){
        String sql = "insert into Ofertas (porcentajeDescuento, codigoProducto) values (?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, of.getPorcentajeDescuento());
            ps.setInt(2, of.getCodigoProducto());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    
    public Oferta listarCodigoOferta(int id){
        Oferta of = new Oferta();
        String sql = "select * from Ofertas where codigoOferta = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                of.setPorcentajeDescuento(rs.getInt(2));
                of.setCodigoProducto(rs.getInt(3));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return of;
    }
    
    
    
    
    public int actualizar(Oferta of){
        String sql = "update ofertas set porcentajeDescuento = ?, codigoProducto = ? where codigoOferta = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, of.getPorcentajeDescuento());
            ps.setInt(2, of.getCodigoProducto());
            ps.setInt(3, of.getCodigoOferta());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    
    public void eliminar(int id){
        String sql = "delete from Ofertas where codigoOferta = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
