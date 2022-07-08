<%-- 
    Document   : Principal
    Created on : 6/04/2022, 12:20:26 a. m.
    Author     : brayan.daza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//borrar cahe
            response.setHeader("pragma", "no-cache");
            response.setDateHeader("Expires", 0);
            if (session.getAttribute("Nombres") == null && session.getAttribute("TipoEmpleado") == null && session.getAttribute("idEmpleado") == null) {

                response.sendRedirect("index.jsp");
            }
            String Genero = String.valueOf(session.getAttribute("Genero"));
        %>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/sweetalert2.css">
        <link rel="stylesheet" href="css/material.min.css">
        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/material.min.js" ></script>
        <script src="js/sweetalert2.min.js" ></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
        <script src="js/main.js" ></script>


    </head>
    <body>
        <script type="text/javascript">
            swal({
                title: "Bienvenido!",
                text: "Cargando...",
                timer: 1500,
                showConfirmButton: false
            });

        </script>
        <!-- navBar -->
        <div class="full-width navBar">
            <div class="full-width navBar-options">
                <i class="zmdi zmdi-more-vert btn-menu" id="btn-menu"></i>	
                <div class="mdl-tooltip" for="btn-menu">Menu</div>
                <nav class="navBar-options-list">
                    <ul class="list-unstyle">
                        <li class="btn-exit" id="btn-exit">

                            <form action="FinalizarSesion" id="form1" method="POST">
                                <small><button type="button" class="text-condensedLight noLink " style="margin-top:5px ;   border-radius: 20px; border-color: #FFF;  background-color: transparent; ">Cerrar Sesión    <i class="zmdi zmdi-power"/></i> </button></small>  
                            </form>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- navLateral -->
        <section class="full-width navLateral">
            <div class="full-width navLateral-bg btn-menu"></div>
            <div class="full-width navLateral-body">
                <div class="full-width navLateral-body-logo  text-center tittles ">
                    <i class="zmdi zmdi-close btn-menu" style="padding-bottom: 5px;"></i>  <img src="./assets/img/logo.png" width="35%;"> 
                </div>
                <figure class="full-width" style="height: 77px;">
                    <div class="navLateral-body-cl">
                        <%if (Genero.equals("Masculino")) {%>
                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                        <%} else {%>
                        <img src="assets/img/avatar-female.png" alt="Avatar" class="img-responsive">
                        <%}%>

                    </div>
                    <figcaption class="navLateral-body-cr hide-on-tablet">
                        <span>
                            ${Nombres} ${Apellidos}<br>
                            <small>${TipoEmpleado}</small>
                        </span>
                    </figcaption>
                </figure>
                <a href="Controlador?menu=Home" target="myframe" class="full-width" style="text-decoration: none;
                   color: black;">
                    <div class="full-width tittles navLateral-body-tittle-menu">
                        <i class="zmdi zmdi-desktop-mac"></i><span class="hide-on-tablet">&nbsp; DASHBOARD</span>
                    </div>
                </a>
                <nav class="full-width">
                    <ul class="full-width list-unstyle menu-principal">
                        <li class="full-width">
                            <a href="Controlador?menu=Home" target="myframe" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-home"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    PAGINA PRINCIPAL
                                </div>
                            </a>
                        </li>


                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-face"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    CONTROL EMPLEADOS
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">

                                    <a href="Controlador?menu=Usuarios&accion=ListarUserEstado" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-account"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA APROBAR USUARIOS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="Controlador?menu=Usuarios&accion=Listar" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-accounts"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA DE EMPLEADOS
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                       <i class="zmdi zmdi-accounts-list"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    CLIENTES
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">

                                      <a href="Controlador?menu=Clientes&accion=Listar"  target="myframe" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-accounts-list-alt"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA DE CLIENTES
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                   <a href="Controlador?menu=Ciudad&accion=ListarClientes" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-accounts-add"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            REGISTRAR CLIENTES
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                          <i class="zmdi zmdi-account-box-o"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    PROVEEDORES
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">

                                <a href="Controlador?menu=Proveedores&accion=Listar"  target="myframe" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-library"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA DE PROVEEDORES
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                   <a  href="Controlador?menu=Ciudad&accion=ListarProveedores" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                               <i class="zmdi zmdi-account-add"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            REGISTRAR PROVEEDOR
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        

                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    VENTAS
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                 
                                <li class="full-width">

                                    <a href="Controlador?menu=Ventas&accion=ListarVentas" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-assignment "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTADO DE VENTAS
                                        </div>
                                    </a>
                                </li>
                                 <li class="full-width">

                                    <a href="Controlador?menu=RegistrarVenta&accion=generarseries" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-collection-add"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            REGISTRAR VENTA
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Ventas&accion=ListarVentasPendientes" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-assignment "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA VENTAS PENDIENTES    
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Ventas&accion=ListarVentasEntregadas" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-assignment "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA VENTAS ENTREGADAS    
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Ventas&accion=ListarVentasCanceladas" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-assignment "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                          LISTA VENTAS CANCELADAS    
                                        </div>
                                    </a>
                                </li>
                               
                            </ul>

                        </li>

                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-store"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    INVENTARIOS
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>

                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">

                                    <a href="Controlador?menu=Categoria_Productos&accion=Listar" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-label "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTA CATEGORIAS PRODUCTOS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="RegistrarCategoriasProductos.jsp" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                          <b>+</b><i class="zmdi zmdi-label"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            REGISTRAR CATEGORIAS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Productos&accion=Listar" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-dropbox "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                           LISTADO DE PRODUCTOS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Categoria_Productos&accion=ListarenProductos" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                             <b>+</b><i class="zmdi zmdi-dropbox "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                          REGISTRAR PRODUCTOS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Productos&accion=ListarEstado" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-alert-triangle"></i><i class="zmdi zmdi-dropbox "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            PRODUCTOS EN STOCK MINIMO
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-local-shipping"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    PEDIDOS
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>

                            <ul class="full-width menu-principal sub-menu-options">
                                
                                <li class="full-width">

                                    <a href="Controlador?menu=Pedidos&accion=ListarPedidos" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-assignment "></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            LISTADO DE PEDIDOS
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">

                                    <a href="Controlador?menu=Proveedores&accion=ListarPedidos" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-collection-add"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            REGISTRAR PEDIDOS
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-wrench"></i>
                                </div>
                                <div class="navLateral-body-cr hide-on-tablet">
                                    CONFIGURACION USUARIO
                                </div>
                                <span class="zmdi zmdi-chevron-down"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">
                                    <a href="Controlador?menu=Usuarios&accion=Editar&id=${IdEmpleado}&us=2" class="full-width" target="myframe">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-accounts-add"></i>
                                        </div>
                                        <div class="navLateral-body-cr hide-on-tablet">
                                            ACTUALIZAR DATOS
                                        </div>
                                    </a>
                                </li>
                                
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </section>
        <!-- pageContent -->


        <section class="full-width pageContent">
            <div class="m-4" style="height: 2000px; width: 100%; background-color: #fafafa;" >
                <iframe  style="
                         width: 98.5%;
                         height: 100%;
                         border: none;" name="myframe" class="container-fluid"  src="Controlador?menu=Home">  
                </iframe>
            </div>
            <footer class="footer full-reset" style="">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-xs-12 col-sm-6">
                            <h6 class="s">Desarrollador</h6>
                            <i class="zmdi zmdi-check zmdi-hc-fw"></i>&nbsp; Brayan Daza <i class="zmdi zmdi-facebook zmdi-hc-fw footer-social"></i><i class="zmdi zmdi-instagram zmdi-hc-fw footer-social"></i>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright full-reset all-tittles">©2022 - Version 1.0</div></footer>
        </section>

    </body>
</html>
