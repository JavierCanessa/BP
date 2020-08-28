<%-- 
    Document   : deleteEmpresas
    Created on : 20 ago. 2020, 03:43:02
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
        <title>Modificacion</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body>
        
        
        <h1>Modificar Empresa</h1>
        <h4>Desea modificar/ingresar Contrapartida a  la siguiente Empresa? :
            <%
                Empresas emp1 = a.getEmpresa( request.getParameter("CodEmpresa") );
                out.println("<br><br><br>");
                /*
                out.println(
                          "Codigo : " + "<p>" +emp1.getCodEmpresa() + "</p>" + "\n  "
                        + "Descripcion :" +emp1.getDescEmpresa() + "\n  "
                        + "Comision : " + emp1.getComision()
                );
                */
                out.println( new Tabla<Empresas>().getTable( a.getlikeID(request.getParameter("CodEmpresa")) ) );
            %>
        </h4>
        
            <br>
            
            <form action="index.jsp" method="POST">
                <input style="border: 2px;border-color: red;border-style: solid" type="submit" value="Cancelar/Ir a inicio"/>
            </form>
        
            <br>
            
            <form action="ModificarConfirm.jsp" method="GET" >
                <p>El codigo de la empresa a modificar es : <input type="text" name="codEmpresa" value="<% out.println( emp1.getCodEmpresa() ); %>" 
                       readOnly= "true" hidden="true"/></p>
                <input autofocus required="" type="text" name="ContrapartidaMod"  placeholder="Ingrese Contrapartida">
                <input style="border: 2px;border-color: green;border-style: solid" type="submit" value="Modificar Contrapartida"/>
            </form>
             
           
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