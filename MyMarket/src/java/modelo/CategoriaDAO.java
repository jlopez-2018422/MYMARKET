  package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
  
  
 
      public List listar(){
               String sql="Select * From Categorias";
                  List<Categoria>listaCategoria=new ArrayList<>();
                          try{
                             con=cn.Conexion();
                             ps=con.prepareStatement(sql);
                             rs=ps.executeQuery();
                       while(rs.next()){
                                 Categoria cat=new Categoria();
                                 cat.setCodigoCategoria(rs.getInt(1));
                                 cat.setNombreCategoria(rs.getString(2));
                                 listaCategoria.add(cat);
                       }
                   }catch(Exception e){
                           e.printStackTrace();
                           }
                   
                   return listaCategoria;
               }
       public int agregar(Categoria cat){
            String sql ="Insert into Categorias(nombreCategoria) values (?)";
            try{
                con=cn.Conexion();
                ps=con.prepareStatement(sql);
                ps.setString(1,cat.getNombreCategoria());
                ps.executeUpdate();
            }catch (Exception e){
                e.printStackTrace();
                System.out.println("No se pudo agregar el registro");
            }
            
                return resp;
        }   
        
         public Categoria listarCodigoCategoria(int id){
                Categoria cat = new Categoria();
                String sql = "Select * From Categorias Where codigoCategoria= "+id;
                try {
                        con = cn.Conexion();
                        ps = con.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while(rs.next()){
                            cat.setNombreCategoria(rs.getString(2));
                          
                        }
                }catch(Exception e){
                    e.printStackTrace();
                }
                
             return cat;
         }
         public int actualizar(Categoria cat){
         String sql = "update categorias set nombreCategoria = ? where codigoCategoria=?";
            try{
                 con=cn.Conexion();
                ps=con.prepareStatement(sql);
                ps.setString(1,cat.getNombreCategoria());            
                ps.setInt(2, cat.getCodigoCategoria());
                ps.executeUpdate();
            }catch(Exception e){
                e.printStackTrace();
                }
                 return resp;
                 
                 }
         public void eliminar(int id){
             String sql="delete from Categorias where codigoCategoria = "+id;
             try{
                 con=cn.Conexion();
                 ps=con.prepareStatement(sql);
                 ps.executeUpdate();
             }catch(Exception e){
                 e.printStackTrace();
             }
         }
}
  

