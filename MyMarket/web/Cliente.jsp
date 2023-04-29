<%-- 
    Document   : Cliente
    Created on : sep 09, 2022, 17:30:18 p.m.
    Author     : Lic. edwar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <form class="" action="Controlador?menu=Cliente" method="POST">
                        <div class="form-group">
                            <label>DPI: </label>
                            <input type="text"  value="${cliente.getDpiCliente()}" name="txtDPICliente" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Nombres: </label>
                            <input type="text" value="${cliente.getNombresCliente()}" name="txtNombresCliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellidos:  </label>
                            <input type="text" value="${cliente.getApellidosCliente()}" name="txtApellidosCliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nit: </label>
                            <input type="text" value="${cliente.getNitCliente()}" name="txtNitCliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Teléfono: </label>
                            <input type="text" value="${cliente.getTelefonoCliente()}" name="txtTelefonoCliente" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="cold col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>DPI: </td>
                            <td>Nombres: </td>
                            <td>Apellidos: </td>
                            <td>Nit: </td>
                            <td>Teléfono: </td>
                            <td>Acciones</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cliente" items="${clientes}">
                        <tr>
                            <td>${cliente.getDpiCliente()}</td>
                            <td>${cliente.getNombresCliente()}</td>
                            <td>${cliente.getApellidosCliente()}</td>
                            <td>${cliente.getNitCliente()}</td>
                            <td>${cliente.getTelefonoCliente()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Cliente&accion=Editar&dpiCliente=${cliente.getDpiCliente()}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Cliente&accion=Eliminar&dpiCliente=${cliente.getDpiCliente()}">Eliminar</a>
                            </td>
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
