<%-- 
    Document   : Empleados
    Created on : Aug 29, 2022, 10:18:30 AM
    Author     : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Principal.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Listar empleados</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado" method="POST">
                        <div class="form-group">
                            <label>Nombres:</label>
                            <input type="text" value="${empleados.getNombresEmpleado()}" name="txtNombresEmpleado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellidos:</label>
                            <input type="text" value="${empleados.getApellidosEmpleado()}" name="txtApellidosEmpleado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>DPI:</label>
                            <input type="text" value="${empleados.getDpiEmpleado()}" name="txtDpiEmpleado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Fecha nacimiento:</label>
                            <input type="text" value="${empleados.getFechaNacimiento()}"  name="txtFechaNacimiento" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Sexo:</label>
                            <input type="text" value="${empleados.getSexo()}" name="txtSexo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Usuario:</label>
                            <input type="text" value="${empleados.getUsuario()}" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Dirección:</label>
                            <input type="text" value="${empleados.getDireccionEmpleado()}" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Teléfono:</label>
                            <input type="text" value="${empleados.getTelefonoEmpleado()}" name="txtTelefono" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Codigo de Cargo:</label>
                            
                            <select value="${empleados.getCodigoCargo()}"  name="txtCodigoCargo" class="form-control">
                                <c:forEach  var="cargos" items="${cargos}">
                                    <option value="${cargos.getCodigoCargo()}">${cargos.getCodigoCargo()} ------ ${cargos.getNombreCargo()}</option>
                                </c:forEach> 
                            </select>
                        </div>
                        <center>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </center>
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO</td>
                            <td>NOMBRES</td>
                            <td>APELLIDOS</td>
                            <td>DPI</td>
                            <td>F. NACIMIENTO</td>
                            <td>SEXO</td>
                            <td>USUARIO</td>
                            <td>DIRECCION</td>
                            <td>TELEFONO</td>
                            <td>COD. CARGO</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="empleado" items="${empleado}">
                        <tr>
                                <td>${empleado.getCodigoEmpleado()}</td>
                                <td>${empleado.getNombresEmpleado()}</td>
                                <td>${empleado.getApellidosEmpleado()}</td>
                                <td>${empleado.getDpiEmpleado()}</td>
                                <td>${empleado.getFechaNacimiento()}</td>
                                <td>${empleado.getSexo()}</td>
                                <td>${empleado.getUsuario()}</td>
                                <td>${empleado.getDireccionEmpleado()}</td>
                                <td>${empleado.getTelefonoEmpleado()}</td>
                                <td>${empleado.getCodigoCargo()}</td>

                                <td><a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Editar</a></td>
                                <td><a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Eliminar</a></td>
                            </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
