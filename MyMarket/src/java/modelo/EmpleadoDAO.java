package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    
    public Empleado validar(String usuario, String DPIEmpleado){
        //instanciar un objeto de la entidad empleado
        Empleado empleado = new Empleado();
        //Agregar variable de tipo Strin para nuestra consulta sql
        //select * from Empleado where usuario = 'rgod15' and DPIEmpleado = '1579457820107';
        String sql = "select * from empleados where usuario = ? and dpiEmpleado = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, DPIEmpleado);
            rs = ps.executeQuery();
            while(rs.next()){
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setDpiEmpleado(rs.getString("dpiEmpleado"));
                empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                empleado.setUsuario(rs.getString("usuario"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return empleado;//empleado encontrado
    }
    
    
    //OPERACIONES DEL CRUD----------------------------------------------------
    //LISTAR
    
    public List listar(){
        String sql = "Select * from empleados";
        List<Empleado> listaEmpleado = new  ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Empleado em = new Empleado();
                em.setCodigoEmpleado(rs.getInt(1));
                em.setNombresEmpleado(rs.getString(2));
                em.setApellidosEmpleado(rs.getString(3));
                em.setDpiEmpleado(rs.getString(4));
                em.setFechaNacimiento(rs.getString(5));
                em.setSexo(rs.getString(6));
                em.setUsuario(rs.getString(7));
                em.setDireccionEmpleado(rs.getString(8));
                em.setTelefonoEmpleado(rs.getString(9));
                em.setCodigoCargo(rs.getInt(10));
                listaEmpleado.add(em);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaEmpleado;
    }
    
    //metodo agregar
    public int agregar(Empleado emp){
        String sql = "insert into Empleados (nombresEmpleado, apellidosEmpleado, dpiEmpleado,fechaNacimiento, sexo, usuario, direccionEmpleado, telefonoEmpleado, codigoCargo) values(?,?,?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombresEmpleado());
            ps.setString(2, emp.getApellidosEmpleado());
            ps.setString(3, emp.getDpiEmpleado());
            ps.setString(4, emp.getFechaNacimiento());
            ps.setString(5, emp.getSexo());
            ps.setString(6, emp.getUsuario());
            ps.setString(7, emp.getDireccionEmpleado());
            ps.setString(8, emp.getTelefonoEmpleado());
            ps.setInt(9, emp.getCodigoCargo());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp;
    }
    
    //buscar codigo
    public Empleado listarCodigoEmpleado(int id){
        //insertar el objeto a devolver
        Empleado emp = new Empleado();
        String sql = "Select * from empleados where codigoEmpleado = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                emp.setNombresEmpleado(rs.getString(2));
                emp.setApellidosEmpleado(rs.getString(3));
                emp.setDpiEmpleado(rs.getString(4));
                emp.setFechaNacimiento(rs.getString(5));
                emp.setSexo(rs.getString(6));
                emp.setUsuario(rs.getString(7));
                emp.setDireccionEmpleado(rs.getString(8));
                emp.setTelefonoEmpleado(rs.getString(9));
                emp.setCodigoCargo(rs.getInt(10));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return emp;
    }
    
    //metodo editar
    public int actualizar(Empleado emp){
            String sql = "update empleados set nombresEmpleado = ?, apellidosEmpleado=?, dpiEmpleado=?,fechaNacimiento=?, sexo=?, usuario=?, direccionEmpleado=?, telefonoEmpleado=?, codigoCargo=? where codigoEmpleado=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombresEmpleado());
            ps.setString(2, emp.getApellidosEmpleado());
            ps.setString(3, emp.getDpiEmpleado());
            ps.setString(4, emp.getFechaNacimiento());
            ps.setString(5, emp.getSexo());
            ps.setString(6, emp.getUsuario());
            ps.setString(7, emp.getDireccionEmpleado());
            ps.setString(8, emp.getTelefonoEmpleado());
            ps.setInt(9, emp.getCodigoCargo());
            ps.setInt(10, emp.getCodigoEmpleado());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    

    //Eliminar
    public void eliminar(int id){
        String sql = "delete from Empleados where codigoEmpleado="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
