<%@page import="RepositorioInterfaz.EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="RepositorioInterfaz.I_EmpresasRepository"%>
<%@page import="Connectors.Connectors"%>
<%@page import="Connectors.Connectors"%>
<%@page import="utilidad.tabla.Tabla"%>
<%@page import="Entidades.Empresas"%>
<%@page import="Entidades.Empresas"%>
<% I_EmpresasRepository a = new EmpresasRepository( new Connectors() ); %>
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
                                                                <a href="ingresoadmin.jsp" style="border: 2px solid white; padding: 1.5%">INGRESAR COMO ADMINISTRADOR</a>
                                                                <br><br>
								<p>SELECCIONE CRITERIO DE BUSQUEDA : </p>
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="#CodEmpresa">Codigo de empresa</a></li>
								<li><a href="#DescEmpresa">Nombre de empresa</a></li>   
                                                            <!--<li><a href="#modContrapartida">Modificar CONTRAPARTIDA</a></li>--> 
								<!--<li><a href="#contact">Contact</a></li>-->
								<!--<li><a href="#elements">Elements</a></li>-->
							</ul>
						</nav>
					</header>
                                
				<!-- Main -->
					<div id="main">

						<!-- Busqueda Codigo de empresa -->
							<article id="CodEmpresa">
								<h2 class="major">Buscar Codigo:</h2>
                                                                <!--<p> <button onclick="location.href='#DescEmpresa'">Buscar por descripcion</button></p>-->
                                                                
                                                                <form method="POST">
                                                                        <!--<h3>ID de Empresa:</h3>-->   
                                                                        <input autofocus required="" type="text"  name="buscarEmpresaid" placeholder="Ingrese Codigo de Empresa"/>
                                                                </form>                                              
                                                                    
                                                                <p class="major">
                                                                    <%
                                                                      //out.println( request.getParameter("buscarEmpresa") + "\n" );
                                                                      if ( request.getParameter("buscarEmpresaid")==null || request.getParameter("buscarEmpresaid").isEmpty() ){ 
                                                                          //out.println( "<h3 style='color:red' >No se ha ingresado ningun Codigo de Empresa</h3>" );
                                                                          //out.println( new Tabla<Empresas>().getTable(a.getAll()) );
                                                                      }
                                                                      else{

                                                                          out.println( new Tabla<Empresas>().getTable(a.getlikeID(request.getParameter("buscarEmpresaid"))) );
                                                                      }
                                                                    %> 
                                                                </p>
                                                        </article>

						<!-- Busqueda Descripcion de emrpesa -->
							<article id="DescEmpresa">
								<h2 class="major">Buscar Nombre:</h2>
                                                                <!--<p> <button onclick="location.href='#CodEmpresa'">Buscar por Codigo</button></p>-->
                                                                
                                                                <form method="POST">
                                                                        <!--<h3>Nombre de Empresa:</h3>-->
                                                                        <input autofocus required="" type="text" name="buscarEmpresadesc" placeholder="No se ha ingresado ninguna Descripcion de empresa"/>
                                                                </form>
                                                                <p class="major">
                                                                    <%
                                                                        //out.println( request.getParameter("buscarEmpresa") + "\n" );
                                                                        if ( request.getParameter("buscarEmpresadesc")==null || request.getParameter("buscarEmpresadesc").isEmpty() ){ 
                                                                            //out.println( "<h3 style='color:red' >No se ha ingresado ninguna Descripcion de empresa</h3>" );
                                                                            //out.println(new Tabla<Empresas>().getTable(a.getAll()));    
                                                                        }
                                                                        else{
                                                                            //out.println( "Se encontro por nombre de empresa : "  + a.getEmpresa(request.getParameter("buscarEmpresa")) );
                                                                            //out.println(new Table<Curso>().getTable(cr.getAll(),"CursoDelete.jsp"));
                                                                            //out.println( new Tabla<Empresas>().getTable(a.getlikeDesc(request.getParameter("buscarEmpresadesc"))) );
                                                                            out.println("<h3>Funcion deshabilitada</h3>");
                                                                        }
                                                                    %>
                                                                </p>
                                                        </article>

						<!-- Modificar Contrapartida -->
<!--							<article id="modContrapartida">
								<h2 class="major">Buscar :  </h2>
                                                                <p> <button onclick="location.href='#ContraDescEmpresa'">Por Nombre</button></p>
                                                                <p> <button onclick="location.href='#ContraCodEmpresa'">Por Codigo</button></p>
                                                        </article>
                                                            
                                                             Contraparitoda busqueda 
                                                            
                                                            <article id="ContraDescEmpresa">
                                                                <h2 class="major">Modificar<br>Contrapartida</h2>
                                                                <p> <button style="border: 1px;border-color: #F51E59;border-style: solid" onclick="location.href='#ContraCodEmpresa'">Buscar por Codigo</button></p>

                                                                <form method="POST">
                                                                        <h3>Por Nombre de Empresa:</h3>
                                                                        <input required="" type="text" autofocus name="ContrabuscarEmpresadesc" placeholder="Ingrese de empresa"/>
                                                                </form>
                                                                <p class="major">
                                                                    <%
                                                                        //out.println( request.getParameter("buscarEmpresa") + "\n" );
                                                                        if ( request.getParameter("ContrabuscarEmpresadesc")==null || request.getParameter("ContrabuscarEmpresadesc").isEmpty() ){ 
                                                                            {} 
                                                                        }
                                                                        else{
                                                                            out.println( new Tabla<Empresas>().getTabla(        a.getlikeDesc(request.getParameter("ContrabuscarEmpresadesc") ), "ModificarContrapartida.jsp")      );
                                                                        }
                                                                    %>
                                                                </p>
                                                            </article>
                                                            
                                                             Contraparitoda busqueda 
                                                    <article id="ContraCodEmpresa">
                                                            <h2 class="major">Modificar<br>Contrapartida</h2>
                                                        <p> <button style="border: 1px;border-color: #F51E59;border-style: solid" onclick="location.href='#ContraDescEmpresa'">Buscar por Descripcion</button></p>

                                                        <form method="POST">
                                                                <h3>Por Codigo de Empresa:</h3>   
                                                                <input required="" type="text" autofocus name="ContrabuscarEmpresaCod" placeholder="Ingrese Codigo de empresa"/>
                                                        </form>
                                                        <p class="major">
                                                            <%
                                                                //out.println( request.getParameter("buscarEmpresa") + "\n" );
                                                                if ( request.getParameter("ContrabuscarEmpresaCod")==null || request.getParameter("ContrabuscarEmpresaCod").isEmpty() ){ 
                                                                    {} 
                                                                }
                                                                else{
                                                                    out.println( new Tabla<Empresas>().getTabla(        a.getlikeID(request.getParameter("ContrabuscarEmpresaCod") ), "ModificarContrapartida.jsp")      );
                                                                }
                                                            %>
                                                        </p>
                                                    </article>-->


				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; DESARROLLADOR: JAVIER CANESSA MAUTONG.</p>
					</footer>

			</div>


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
