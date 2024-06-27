<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/81d8275019.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="icon" href="img/logo.png" type="image/png">
        <style>
            .navbar {
                background-color: red !important;
            }
            body {
                background-color: #2f2f2f;
            }
            .btn-black {
                background-color: black;
                color: white;
                border-color: black;
            }
            .btn-black:hover {
                background-color: darkgray;
                color: black;
                border-color: darkgray;
            }
            div.container.mt-4 div.col * {
                color: white;
            }
            th,h3,
            td {
                color: white !important;
            }

        </style>

        <title>Mis Compras</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="index.jsp">
                <img src="img/logo.png" width="30" height="30" alt="Logo" class="d-inline-block align-top">
                Digital-Dash
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link active" aria-current="page" href="Controlador?accion=home" onclick="mostrarSeccion('infoEmpresa')">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Ofertas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Controlador?accion=home">
                            Seguir comprando
                        </a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-black my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="true">
                            Iniciar Sesion
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <h3 style="margin-left: 300px;">Mi compra</h3>
            <div class="row">
                <div class="col-sm-8" style="color: white;">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                                <tr class="text-center">
                                    <td>${car.getItem() }</td>
                                    <td>${car.getNombre() }</td>
                                    <td>
                                        ${car.getDescripcion()}<br><br>
                                        <img src="img/Producto${car.getIdProducto()}.png" width="100" height="100">
                                    </td>

                                    <td>${car.getPrecioCompra() }</td>
                                    <td>
                                        <input type="hidden" id="idpro" value="${car.getIdProducto()}" >
                                        <input type="number" id="cantidad" value="${car.getCantidad()}" class="form-control text-center" min="1">
                                    </td>
                                    <td>${car.getSubTotal() }</td>
                                    
                                    <td>
                                        <a href="#" class="btn btn-info btn-block">Editar</a>
                                        <br>
                                        <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                        <a href="#" id="btnDelete" class="btn btn-danger btn-block">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h4>Generar compra</h4>
                        </div>
                        <div class="card-body">
                            <label>Sub total:</label>
                            <input type="text" value="S/.${String.format('%.2f', totalPagar)}" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" value="S/.00.00" readonly="" class="form-control">
                            <label>Total a pagar:</label>
                            <input type="text" value="S/.${String.format('%.2f', totalPagar)}" readonly="" class="form-control">
                        </div>

                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">Realizar pago</a>
                            <a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <!--Font awesome-->
    </body>
</html>
