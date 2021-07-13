<%@page import="RepositorioInterfaz.EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="Connectors.Connectors"%>
<%@page import="Connectors.Connectors"%>
<%@page import="utilidad.tabla.Tabla"%>
<%@page import="Entidades.Empresas"%>
<%@page import="Entidades.Empresas"%>
<% I_EmpresasRepository a = new EmpresasRepository(new Connectors()); %>
<!DOCTYPE HTML>
<!--
        Dimension by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>Codigo Mi Vecino</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="icon" href="./images/elmercader01.svg"/>
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">

        <!-- Wrapper -->
        <div id="wrapper" style="background-color: black;">


            <!-- Header -->
            <header id="header">
                <div class="logo">
                    <a style="text-decoration: none" href="index.jsp" class="icon fa-gem" ></a>
                </div>
                <div class="content">
                    <div class="inner">
                        <h1>Codigo Mi Vecino</h1>
                        <p>SELECCIONE CRITERIO DE BUSQUEDA : </p>
                    </div>
                </div>
                <nav>
                    <ul>
                        <li><a href="#CodEmpresa">Codigo de empresa</a></li>
                        <li><a href="#DescEmpresa">Nombre de empresa</a></li>
                    </ul>
                </nav>
                <a href="#formIngreso" style="border: 1px solid white; padding: 1%">INGRESO ADMINISTRADOR</a>
                <br><br><br><br><br><br> 
            </header>

            <!-- Main -->
            <div id="main">

                <!-- Busqueda Codigo de empresa -->
                <article id="CodEmpresa">
                    <h2 class="major">Buscar Codigo:</h2>

                    <form method="POST">
                        <input autofocus required="" type="text"  name="buscarEmpresaid" placeholder="Ingrese Codigo de Empresa"/>
                    </form>                                              

                    <p class="major">
                        <%
                            if (request.getParameter("buscarEmpresaid") == null || request.getParameter("buscarEmpresaid").isEmpty()) {
                            } else {
                                out.println(new Tabla<Empresas>().getTable(a.getlikeID(request.getParameter("buscarEmpresaid"))));
                            }
                        %> 
                    </p>
                </article>

                <!-- Busqueda Descripcion de emrpesa -->
                <article id="DescEmpresa">
                    <h2 class="major">Buscar Nombre:</h2>

                    <form method="POST">
                        <input autofocus required="" type="text" name="buscarEmpresadesc" placeholder="No se ha ingresado ninguna Descripcion de empresa"/>
                    </form>
                    <p class="major">
                        <%
                            if (request.getParameter("buscarEmpresadesc") == null || request.getParameter("buscarEmpresadesc").isEmpty()) {
                            } else {
                                out.println(new Tabla<Empresas>().getTable(a.getlikeDesc(request.getParameter("buscarEmpresadesc"))));
                            }
                        %>
                    </p>
                </article>

                <!-- Acceso -->
                <article id="formIngreso">
                    <form action="http://www.codigomivecino.cf/InicioSession" method="POST">
                        Username:   <input type="text" name="user" value="admin"/><br>
                        Password:   <input type="password" name="pass" /><br>
                        <input type="reset" value="Clean"/>
                        <input type="submit" value="Login"/>
                    </form>


                </article>

                <!-- Footer -->
                <footer id="footer">
                    <p class="copyright">&copy; DESARROLLADOR: JAVIER CANESSA MAUTONG.</p>
                </footer>

            </div>
        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
