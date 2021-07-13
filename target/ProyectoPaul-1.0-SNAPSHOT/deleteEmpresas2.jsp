<%-- 
    Document   : deleteEmpresas2
    Created on : 20 ago. 2020, 03:43:15
    Author     : JavierCanessa
--%>
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
        <title>Borrar</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
        <link rel="icon" href="./images/elmercader01.svg"/>
    </head>
    <body>
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
        <h1>Se elimino la empresa</h1>
        <%
            a.eliminar(a.getEmpresa(request.getParameter("codEmpresa")));
            out.println("<h3 style='color:green' >Se elimino la empresa exitosamente</h3>");
        %>

        <br>
        <button onclick="location.href = 'index.jsp'">Volver al Inicio</button>
        <br><br>
        <button onclick="location.href = 'ingresoadmin.jsp'">Volver al Panel de administrador</button>


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
