<%-- 
    Document   : Principal
    Created on : 1/09/2022, 07:32:43 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/Principal.css" />
    <link
            href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="loader-wrapper">
    <span class="loader"></span>
</div>

<nav>
    <div class="logo">
        <i class="bx bx-menu menu-icon"></i>
        <img src="./img/Logo.png" alt="" width="70px">
        <span class="logo-name">My Market</span>
        <div class="btn-user">
            <div class="dropdown">
                <button id="dropdownMenuButton" class="dropdown btnUser"type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </button>
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img alt="" src="./img/${usuario.getUsuario()}.png" width="50">
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">${usuario.getUsuario()}@gmail.com</a>
                    <div class="dropdown-divider responsive-form"></div>
                    <form class="responsive-form" action="Validar" method="POST">
                        <button style="color: red" name="accion" name="Salir" class="btn btn-danger dropdown-item" href="#">Salir</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="btn-logout">
            <form action="Validar" method="POST">
                <button name="accion" name="Salir" class="btnlogout" href="#" >
                    <span class="text">Salir</span>
                    <span class="icon">
                        <img src="./img/logout.png" alt="">
                    </span>
                </button>
            </form>
        </div>

        <div class="sidebar">
            <div class="logo">
                <i class="bx bx-menu menu-icon"></i>
                <img src="./img/logoWhite.png" alt="" width="150px">
            </div>
            <span class="controlLabel">OPCIONES</span>
            <div class="sidebar-content">
                <ul class="lists">
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-home-alt icon"></i>
                            <span class="link">Home</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Cliente&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/customer.png" alt="" width="20px"></i>
                            <span class="link">Clientes</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Empleado&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/customer.png" alt="" width="20px"></i>
                            <span class="link">Empleados</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Producto&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/product.png" alt="" width="20px"></i>
                            <span class="link">Productos</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Oferta&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/discount.png" alt="" width="20px"></i>
                            <span class="link">Ofertas</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Pedido&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/pedidos.png" alt="" width="20px"></i>
                            <span class="link">Pedidos</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Categoria&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/categories.png" alt="" width="20px"></i>
                            <span class="link">Categorias</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Proveedor&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/provider.png" alt="" width="20px"></i>
                            <span class="link">Proveedores</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Cargo&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/cargo.png" alt="" width="20px"></i>
                            <span class="link">Cargos</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=Factura&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/bill.png" alt="" width="20px"></i>
                            <span class="link">Factura</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="Controlador?menu=DetalleFactura&accion=Listar" target="myFrame" class="nav-link">
                            <i class="bx icon"><img src="./img/detallebill.png" alt="" width="20px"></i>
                            <span class="link">Detalle de Facturas</span>
                        </a>
                    </li>
                </ul>

            </div>
        </div>
</nav>
<div class="appFrame main" style="height: 57rem; ">
    <iframe class="mainApp" name="myFrame"> </iframe>
</div>


<section class="overlay"></section>

<script src="js/principalApp.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>