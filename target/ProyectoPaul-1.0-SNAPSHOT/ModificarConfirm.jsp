<%-- 
    Document   : deleteEmpresas2
    Created on : 20 ago. 2020, 03:43:15
    Author     : JavierCanessa
--%>
<%@page import="utilidad.tabla.Tabla"%>
<%@page import="RepositorioInterfaz.EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="Connectors.Connectors"%>
<% I_EmpresasRepository a = new EmpresasRepository( new Connectors() ); %>
<%@page import="Entidades.Empresas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Borrar</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body>
        <h1>Se Modifico la empresa</h1>
        <%
            a.modificarContrapartida( a.getEmpresa(request.getParameter("codEmpresa")) , request.getParameter("ContrapartidaMod"));
            out.println("<h3 style='color:green' >Se Modifico la empresa exitosamente</h3>");
            out.println( new Tabla<Empresas>().getTable(a.getlikeID(request.getParameter("codEmpresa"))) );
            
        %>
        
        <br>
        <button onclick="location.href='index.jsp'">Volver al Inicio</button>
        
        
         <!-- Footer -->
            <footer id="footer">
                    <p class="copyright">&copy; DESARROLLADOR: JAVIER CANESSA MAUTONG.</p>
            </footer>
        
        
        <!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
    </body>
               
</html>