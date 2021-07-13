
<%@page import="utilidad.tabla.Tabla"%>
<%@page import="RepositorioInterfaz.EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="Connectors.Connectors"%>
<% I_EmpresasRepository a = new EmpresasRepository(new Connectors()); %>
<%@page import="Entidades.Empresas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Administrador</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="icon" href="./images/elmercader01.svg"/>
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

    </head>

    <body class="is-preload">
        <%
            //HttpSession session=request.getSession();
            boolean xSession = false;
            try {
                xSession = (boolean) session.getAttribute("session");
            } catch (Exception e) {
            }
            if (!xSession)
                response.sendRedirect("sinsesion.html");
        %>

        <h1 id="topPagina" >Administrador</h1>
        <div class="logo">
            <button onclick=" location.href = 'http://www.codigomivecino.cf/logout.jsp'">
                Salir de Administrador
                <a style="text-decoration: none" href="index.jsp" class="icon fa-gem" ></a>
            </button>

        </div>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header">
                <!--<div class="logo">
                        <span class="icon fa-gem"></span>
                </div>-->
                <div class="content">
                    <div class="inner">
                        <h1>Ingresaste como Administrador</h1>
                        <p>vas a poder ingresar nuevo registro, modificar o eliminarlo.</p><br>
                        <button onclick="location.href = 'ingresoNuevo.jsp'">Ingresar Nueva Empresa </button><br><br>
                        <p> O BUSCAR POR : </p>
                    </div>
                </div>
                <nav>
                    <ul>
                        <li><a href="#CodEmpresa">Codigo empresa</a></li>
                        <li><a href="#DescEmpresa">Nombre empresa</a></li>
                        <li><a target="_blank" href="tablacompleta.jsp">Ver Tabla Completa</a></li>
                    </ul>
                </nav>
            </header>

            <!-- Main -->
            <div id="main">

                <!-- Busqueda Codigo de empresa -->
                <article id="CodEmpresa">
                    <h2 class="major">Buscar por Codigo</h2>
                    <!--<p> <button class="botonesBusq" style='margin-left: 10px' onclick="location.href='#DescEmpresa'">Buscar por descripcion</button></p>-->
                    <!--<p> <button class="botonesBusq" style='margin-left: 10px' onclick="location.href='index.jsp/#CodEmpresa'">Recargar</button></p>-->
                    <form method="POST">
                        <h3>ID de Empresa:</h3>   
                        <input required="" type="text" autofocus name="buscarEmpresaid" placeholder="Ingrese Codigo de Empresa"/>
                    </form>                                              

                    <p class="major">
                        <%
                            //out.println( request.getParameter("buscarEmpresa") + "\n" );
                            if (request.getParameter("buscarEmpresaid") == null || request.getParameter("buscarEmpresaid").isEmpty()) {
                                //out.println( "<h3 style='color:red' >No se ha ingresado ningun Codigo de Empresa</h3>" );
                                //out.println( new Tabla<Empresas>().getTable(a.getAll()) );
                            } else {
                                out.println(new Tabla<Empresas>().getTable(a.getlikeID(request.getParameter("buscarEmpresaid")), "deleteEmpresas.jsp"));
                            }
                        %> 
                    </p>
                </article>

                <!-- Busqueda Descripcion de emrpesa -->
                <article id="DescEmpresa">
                    <h2 class="major">Buscar Nombre</h2>
                    <!--<p> <button class="botonesBusq" style='margin-left: 10px' onclick="location.href='#CodEmpresa'">Buscar por Codigo</button></p>-->
                    <!--<p> <button class="botonesBusq" style='margin-left: 10px' onclick="location.href='index.jsp/#DescEmpresa'">Recargar</button></p>-->
                    <form method="POST">
                        <h3>Nombre de Empresa:</h3>   
                        <input required="" type="text" autofocus name="buscarEmpresadesc" placeholder="No se ha ingresado ninguna Descripcion de empresa"/>
                    </form>
                    <p class="major">
                        <%
                            //out.println( request.getParameter("buscarEmpresa") + "\n" );
                            if (request.getParameter("buscarEmpresadesc") == null || request.getParameter("buscarEmpresadesc").isEmpty()) {
                                //out.println( "<h3 style='color:red' >No se ha ingresado ninguna Descripcion de empresa</h3>" );
                                //out.println(new Tabla<Empresas>().getTable(a.getAll()));    
                            } else {
                                out.println(new Tabla<Empresas>().getTable(a.getlikeDesc(request.getParameter("buscarEmpresadesc")), "deleteEmpresas.jsp"));
                            }
                        %>
                    </p>
                </article>
            </div>

            <!-- Footer -->
            <footer id="footer">
                <p class="copyright">&copy; DESARROLLADOR: JAVIER CANESSA MAUTONG.</p>
            </footer>

        </div>
        <br><br><br><br><br><br>


        <!-- Scripts -->    
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>

</html>
