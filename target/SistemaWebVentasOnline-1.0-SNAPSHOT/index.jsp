<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/81d8275019.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="icon" href="img/logo.png" type="image/png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
            /* Estilos para la sección "Información de la Empresa" */
            #about {
                background-color: #f9f9f9;
                padding: 40px;
                border-radius: 10px;
                margin-bottom: 30px;
            }

            #about h2 {
                color: #333;
                font-size: 28px;
                margin-bottom: 20px;
            }

            #about p {
                color: #666;
                font-size: 16px;
                line-height: 1.6;
                margin-bottom: 15px;
            }

            /* Estilos para la sección "Nuestros Productos" */
            #products {
                background-color: #f9f9f9;
                padding: 40px;
                border-radius: 10px;
                margin-bottom: 30px;
            }

            #products h2 {
                color: #333;
                font-size: 28px;
                margin-bottom: 20px;
            }

            #products p {
                color: #666;
                font-size: 16px;
                line-height: 1.6;
                margin-bottom: 15px;
            }

            /* Estilos para la sección "Contacto" */
            #contact {
                background-color: #f9f9f9;
                padding: 40px;
                border-radius: 10px;
                margin-bottom: 30px;
            }

            #contact h2 {
                color: #333;
                font-size: 28px;
                margin-bottom: 20px;
            }

            #contact p {
                color: #666;
                font-size: 16px;
                line-height: 1.6;
                margin-bottom: 15px;
            }

            #contact ul {
                color: #666;
                font-size: 16px;
                line-height: 1.6;
            }

        </style>
        <title>Digital-Dash</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="homeInfo.jsp">
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
                        <a class="nav-link active" aria-current="page" href="Controlador?accion=Cesta">
                            <i class="fa-solid fa-cart-shopping"></i>(<label style="color: white">${contador}</label>)
                            Cesta
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

        <div class="container mt-2" id="test">
            <div class="row flex-wrap">
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4 mb-4">
                        <div class="card">
                            <div class="card-header">
                                <h5>${p.getNombres()}</h5>
                            </div>   
                            <div class="card-body">
                                <img src="${p.imageUrl}" width="200" height="180">
                                <i>S/.${p.getPrecio()}</i>
                            </div>
                            <div class="card-footer text-center" >
                                <label>${p.getDescripcion()}
                                </label>
                                <div>
                                    <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info">Agregar a la cesta</a>             
                                    <a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
                                </div>
                            </div>
                        </div>
                    </div>   
                </c:forEach>

            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <!--Font awesome-->
    </body>
</html>
