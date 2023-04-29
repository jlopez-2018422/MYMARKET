<%-- 
    Document   : Pedido
    Created on : 11/09/2022, 08:22:21 PM
    Author     : jefrey
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Pedidos</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controlador?menu=Pedido" method="POST">
                        <div class="form-group">
                            <label>Descripción de Pedido:</label>
                            <input type="text" value="${pedido.getDescripcionPedido()}" name="txtDesPedido" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Fecha de Pedido:</label>
                            <input type="text" value="${pedido.getFechaEntrada()}" name="txtFecha" class="form-control">
                        </div>
                         <div class="form-group">
                            <label>CodProducto:</label>
                            <select value="${pedido.getCodigoProducto()}" name="txtCodProducto" class="form-control">
                                <c:forEach var="producto" items="${productos}">
                                    <option value="${producto.getCodigoProducto()}">${producto.getCodigoProducto()} ------ ${producto.getNombreProducto()}</option>
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
                            <td>CÓDIGO DE PEDIDO</td>
                            <td>DESCRIPCIÓN</td>
                            <td>FECHA</td>
                            <td>CÓDIGO DE PRODUCTO</td>
                            
                        </tr>
                    </thead>
                    <tbody>
                        
                        <c:forEach var="pedido" items="${pedidos}">
                            <tr>
                                <td>${pedido.getCodigoPedido()}</td>
                                <td>${pedido.getDescripcionPedido()}</td>
                                <td>${pedido.getFechaEntrada()}</td>
                                <td>${pedido.getCodigoProducto()}</td>
                                

                                <td>
                                <a class="btn btn-warning" href="Controlador?menu=Pedido&accion=Editar&codigoPedido=${pedido.getCodigoPedido()}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Pedido&accion=Eliminar&codigoPedido=${pedido.getCodigoPedido()}">Eliminar</a>
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
