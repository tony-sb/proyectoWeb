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

        <!-- Información de la empresa -->
        <div class="container mt-4" id="infoEmpresa">
            <div class="row">
                <div class="col">
                    <div style="background-image: url('img/logoTT.png'); background-size: contain; background-position: center; height: 320px;"></div>

                    <header>  
                        <h1 style="color: white; text-align: center; padding-top: 20px;">Bienvenido a Digital-Dash</h1>
                        <!-- Barra de navegación -->
                        <nav>
                            <ul>
                                <li><a href="#about" onclick="mostrarSeccion('about')">Sobre Nosotros</a></li>
                                <li><a href="#products" onclick="mostrarSeccion('products')">Productos</a></li>
                                <li><a href="#contact" onclick="mostrarSeccion('contact')">Contacto</a></li>
                            </ul>
                        </nav>
                    </header>

                    <!-- Sección sobre nosotros -->
                    <section id="about">
                        <h2>Información de la Empresa</h2>
                        <p>Aquí en Digital-Dash, estamos comprometidos en proporcionarte la mejor experiencia de compra en línea de productos electrónicos. Nuestra misión es ofrecer productos de alta calidad y servicio excepcional para satisfacer las necesidades de nuestros clientes.</p>
                        <p>Nuestra visión es convertirnos en el destino preferido para aquellos que buscan tecnología innovadora y soluciones confiables. Nos esforzamos por ser líderes en el mercado, impulsados por la pasión por la excelencia y el compromiso con la satisfacción del cliente.</p>
                        <p>¡Únete a nosotros en nuestro viaje hacia un futuro digital emocionante!</p>
                        <footer style="text-align: right;"><a href="index.jsp" style="color: black;">Volver</a></footer>
                    </section>

                    <!-- Sección de productos -->
                    <section id="products">
                        <h2>Nuestros Productos</h2>
                        <p>En Digital-Dash, ofrecemos una amplia gama de productos electrónicos, incluyendo PCs, laptops, tablets, smartphones, accesorios y mucho más. Todos nuestros productos son cuidadosamente seleccionados para garantizar calidad y rendimiento.</p>
                        <p>Explora nuestra selección y encuentra el dispositivo perfecto para tus necesidades.</p>
                        <footer style="text-align: right;"><a href="index.jsp" style="color: black;">Volver</a></footer>
                    </section>

                    <!-- Sección de contacto -->
                    <section id="contact">
                        <h2>Contacto</h2>
                        <p>¿Tienes alguna pregunta o comentario? ¡Nos encantaría escucharte!</p>
                        <p>Puedes contactarnos a través de:</p>
                        <ul>
                            <li><strong>Teléfono:</strong> +123456789</li>
                            <li><strong>Correo Electrónico:</strong> info@digital-dash.com</li>
                            <li><strong>Dirección:</strong> Calle Principal #123, Ciudad, País</li>
                        </ul>
                        <footer style="text-align: right;"><a href="index.jsp" style="color: black;">Volver</a></footer>
                    </section>
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
