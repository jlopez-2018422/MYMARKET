
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form  action="Controlador?menu=Producto" method="POST">
              
                        <div class="form-group">
                            <label>Nombre Producto: </label>
                            <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Precio: </label>
                            <input type="text" value="${producto.getPrecioProducto()}" name="txtPrecio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Stock:  </label>
                            <input type="text" value="${producto.getStock()}"name="txtStock" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Descripcion: </label>
                            <input type="text" value ="${producto.getDescripcionProducto()}" name="txtDescripcion" class="form-control">
                        </div>
                      
                         <div class="form-group">
                            <label>Codigo de Categoria:</label>
                            <select value="${producto.getCodigoCategoria()}"  name="txtCodigoCategoria" class="form-control">
                                <c:forEach  var="categoria" items="${categoria}">
                                    <option value="${categoria.getCodigoCategoria()}">${categoria.getCodigoCategoria()} ------ ${categoria.getNombreCategoria()}</option>
                                </c:forEach> 
                            </select>
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
                            <td>Codigo Producto:</td>
                            <td>Nombre Producto:</td>
                            <td>Precio: </td>
                            <td>Stock: </td>
                            <td>Descripcion:</td>
                            <td>Codigo Categoria:</td>
                            <td>Acciones</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}"> 
                            <tr>
                            <td>${producto.getCodigoProducto()}</td>
                            <td>${producto.getNombreProducto()}</td>
                            <td>${producto.getPrecioProducto()}</td>
                            <td>${producto.getStock()}</td>
                            <td>${producto.getDescripcionProducto()}</td>
                            <td>${producto.getCodigoCategoria()}</td>
                            <td><a class="btn btn-warning" href="Controlador?menu=Producto&accion=Editar&codigoProducto=${producto.getCodigoProducto()}">Editar</a></td>
                            <td> <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&codigoProducto=${producto.getCodigoProducto()}">Eliminar</a></td>
                            
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

