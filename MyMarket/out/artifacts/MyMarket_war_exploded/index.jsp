<%-- 
    Document   : Principal
    Created on : Aug 29, 2022, 10:17:34 AM
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
            <link rel="stylesheet" href="css/login.css">
            <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        </head>
        <body>
            <div class="loader-wrapper">
                <span class="loader"></span>
            </div>
            <section class="container forms main">
                <div class="bg"></div>
                <div class="form login">
                    <div class="form-content">
                        <header>Login</header>
                        <div class="login-logo">
                            <img style="border-radius: 5px" src="img/Logo.png" width="200">
                        </div>
                        <form class="form-sing" action="Validar" method="POST">
                            <div class="field input-field">
                                <input type="text" name="txtUser" placeholder="Usuario" class="input">
                            </div>
                    <div class="field input-field">
                        <input type="password" name="txtPass" placeholder="Contraseña" class="password">
                        <i class='bx bx-hide eye-icon'></i>
                    </div>
                    <div class="field button-field">
                        <button type="submit" name="accion" value="Ingresar">Iniciar Sesion</button>
                    </div>
                </form>
            </div>
        </div >

    </section>

    <script src="js/loginApp.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html> 