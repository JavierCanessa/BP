<%-- 
    Document   : deleteEmpresas
    Created on : 20 ago. 2020, 03:43:02
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
        <title>Nueva Empresa</title>
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
        <h1>Crear nuevo registro</h1> 

        <!-- INDICACIONES -->
        <button  onclick="location.href = 'index.jsp'">Volver al Inicio</button><br>
        <button  onclick="location.href = 'ingresoadmin.jsp'">Volver al Panel de administrador</button><br>
        <%
            try {
                String CodEmpresa = request.getParameter("CodEmpresa");
                String DescEmpresa = request.getParameter("DescEmpresa");
                //String Contrapartida = request.getParameter("Contrapartida");
                if (CodEmpresa.isEmpty() || DescEmpresa.isEmpty()) {
                    throw new NullPointerException();
                }
                Empresas empre1 = new Empresas(CodEmpresa, DescEmpresa);
                a.guardar(empre1);
                out.println("<h4 style='color:green'>Se guardo la empresa : "+ empre1.getCodEmpresa()  +" "+ empre1.getDescEmpresa() + ".</h4>");
                empre1 = new Empresas();
                //out.println("<a href='ingresoNuevo.jsp' style='color:yellow'>CLICK AQUI PARA RECARGAR PAGINA Y LISTA ASI EVITAR POSIBLES DUPLICADOS</a>");
            } catch (NullPointerException n) {
                //out.println("<h3 style='color:red' >Falta completar algun dato</h3>");
            } catch (Exception e) {
                e.printStackTrace();
            }
            //out.println( new Tabla<Empresas>().getTable( a.getAll(), "deleteEmpresas.jsp" ) );
%>




        <!--Formulario Ingreso -->
        <div id="formAltas" style="text-align: center" >
            <div id="ingreso" > 
                <form method="POST">
                    <table style="border: gray 8px groove; border-radius: 15px">
                        <tr>
                            <td> <br><br>  Codigo empresa :  </td>
                            <td> <br><br> <input required="" type="text"  name="CodEmpresa" placeholder="ingresar codigo de empresa"> </td>
                        </tr>
                        <tr>
                            <td>  Descripcion empresa :  </td>
                            <td> <input required="" type="text" name="DescEmpresa" placeholder="ingresar descripcion de empresa"> </td>
                        </tr>
                        <!--                            <tr>
                                                        <td>  Contrapartida : <br><br><br> </td> 
                                                        <td> <input required="Si no hay contrapartida escibir Null" type="text" name="Contrapartida" placeholder="ingresar contrapartida"><br><br><br> </td> 
                                                        
                                                    </tr>-->
                        <tr>
                            <td><input type="reset" value="Borrar"/><br><br></td>   
                            <td><input type="submit" value="Enviar"/><br><br></td>  
                        </tr>

                    </table>

                </form>

            </div>
        </div>

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
