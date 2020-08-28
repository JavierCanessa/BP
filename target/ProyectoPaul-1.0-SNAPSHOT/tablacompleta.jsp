<%-- 
    Document   : tablacompleta
    Created on : 25 ago. 2020, 21:43:38
    Author     : JavierCanessa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="RepositorioInterfaz.EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="Connectors.Connectors"%>
<%@page import="Connectors.Connectors"%>
<%@page import="utilidad.tabla.Tabla"%>
<%@page import="Entidades.Empresas"%>
<%@page import="Entidades.Empresas"%>
<% I_EmpresasRepository a = new EmpresasRepository( new Connectors() ); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Tabla Completa</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
        <!--<script src="fun.js"></script>-->
    </head>
    <body>
        <h1>Visualizador de tabla completa</h1><br>
        <button onclick=" location.href='index.jsp' ">Volver al Inicio</button><br><br><br>
        <button onclick=" location.href='ingresoadmin.jsp' ">Volver al panel de administrador</button><br><br><br>
        <%
            out.println( new Tabla<Empresas>().getTable( a.getAll(), "deleteEmpresas.jsp" ) );
        %>
        
        
        <!-- Footer -->
            <footer id="footer">
                    <p class="copyright">&copy; DESARROLLADOR	: JAVIER CANESSA MAUTONG.</p>
            </footer>
        
         <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
