<%-- 
    Document   : Cargo
    Created on : 9/09/2022, 09:36:16 PM
    Author     : damia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Cargos</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controlador?menu=Cargo" method="POST">
                        <div class="form-gruop">
                            <label>Nombre: </label>
                            <Input type="text" value="${cargo.getNombreCargo()}" name="txtNombreCargo" class="form-control">
                        </div>
                        <div class="form-gruop">
                            <label>Descripcion: </label>
                            <Input type="text" value="${cargo.getDescripcionCargo()}" name="txtDescripcion" class="form-control">
                        </div>
                        <br>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO</td>
                            <td>NOMBRE</td>
                            <td>DESCRIPCION</td>
                            <td>ACCIONES</td>
                        </tr> 
                    </thead>
                    <tbody>
                    <c:forEach var="cargos" items="${cargos}">
                        <tr>
                            <td>${cargos.getCodigoCargo()}</td>
                            <td>${cargos.getNombreCargo()}</td>
                            <td>${cargos.getDescripcionCargo()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Cargo&accion=Editar&codigoCargo=${cargos.getCodigoCargo()}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Cargo&accion=Eliminar&codigoCargo=${cargos.getCodigoCargo()}">Eliminar</a>
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
