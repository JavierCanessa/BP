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
								<li><a href="#modContrapartida">Modificar CONTRAPARTIDA</a></li>
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
                                                                            out.println( new Tabla<Empresas>().getTable(a.getlikeDesc(request.getParameter("buscarEmpresadesc"))) );
                                                                        }
                                                                    %>
                                                                </p>
                                                        </article>

						<!-- Modificar Contrapartida -->
							<article id="modContrapartida">
								<h2 class="major">Buscar :  </h2>
                                                                <p> <button onclick="location.href='#ContraDescEmpresa'">Por Nombre</button></p>
                                                                <p> <button onclick="location.href='#ContraCodEmpresa'">Por Codigo</button></p>
                                                        </article>
                                                            
                                                            <!-- Contraparitoda busqueda -->
                                                            
                                                            <article id="ContraDescEmpresa">
                                                                <h2 class="major">Modificar<br>Contrapartida</h2>
                                                                <!--<p> <button style="border: 1px;border-color: #F51E59;border-style: solid" onclick="location.href='#ContraCodEmpresa'">Buscar por Codigo</button></p>-->

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
                                                            
                                                            <!-- Contraparitoda busqueda -->
                                                        <article id="ContraCodEmpresa">
                                                            <h2 class="major">Modificar<br>Contrapartida</h2>
                                                        <!--<p> <button style="border: 1px;border-color: #F51E59;border-style: solid" onclick="location.href='#ContraDescEmpresa'">Buscar por Descripcion</button></p>-->

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
                                                </article>

						<!-- Contact -->
							<article id="contact">
								<h2 class="major">Contact</h2>
								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<label for="name">Name</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field half">
											<label for="email">Email</label>
											<input type="text" name="email" id="email" />
										</div>
										<div class="field">
											<label for="message">Message</label>
											<textarea name="message" id="message" rows="4"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="primary" /></li>
										<li><input type="reset" value="Reset" /></li>
									</ul>
								</form>
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
								</ul>
							</article>

						<!-- Elements -->
							<article id="elements">
								<h2 class="major">Elements</h2>

								<section>
									<h3 class="major">Text</h3>
									<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
									This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
									This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
									<hr />
									<h2>Heading Level 2</h2>
									<h3>Heading Level 3</h3>
									<h4>Heading Level 4</h4>
									<h5>Heading Level 5</h5>
									<h6>Heading Level 6</h6>
									<hr />
									<h4>Blockquote</h4>
									<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
									<h4>Preformatted</h4>
									<pre><code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
								</section>

								<section>
									<h3 class="major">Lists</h3>

									<h4>Unordered</h4>
									<ul>
										<li>Dolor pulvinar etiam.</li>
										<li>Sagittis adipiscing.</li>
										<li>Felis enim feugiat.</li>
									</ul>

									<h4>Alternate</h4>
									<ul class="alt">
										<li>Dolor pulvinar etiam.</li>
										<li>Sagittis adipiscing.</li>
										<li>Felis enim feugiat.</li>
									</ul>

									<h4>Ordered</h4>
									<ol>
										<li>Dolor pulvinar etiam.</li>
										<li>Etiam vel felis viverra.</li>
										<li>Felis enim feugiat.</li>
										<li>Dolor pulvinar etiam.</li>
										<li>Etiam vel felis lorem.</li>
										<li>Felis enim et feugiat.</li>
									</ol>
									<h4>Icons</h4>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
									</ul>

									<h4>Actions</h4>
									<ul class="actions">
										<li><a href="#" class="button primary">Default</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
									<ul class="actions stacked">
										<li><a href="#" class="button primary">Default</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
								</section>

								<section>
									<h3 class="major">Table</h3>
									<h4>Default</h4>
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>Name</th>
													<th>Description</th>
													<th>Price</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Item One</td>
													<td>Ante turpis integer aliquet porttitor.</td>
													<td>29.99</td>
												</tr>
												<tr>
													<td>Item Two</td>
													<td>Vis ac commodo adipiscing arcu aliquet.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item Three</td>
													<td> Morbi faucibus arcu accumsan lorem.</td>
													<td>29.99</td>
												</tr>
												<tr>
													<td>Item Four</td>
													<td>Vitae integer tempus condimentum.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item Five</td>
													<td>Ante turpis integer aliquet porttitor.</td>
													<td>29.99</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2"></td>
													<td>100.00</td>
												</tr>
											</tfoot>
										</table>
									</div>

									<h4>Alternate</h4>
									<div class="table-wrapper">
										<table class="alt">
											<thead>
												<tr>
													<th>Name</th>
													<th>Description</th>
													<th>Price</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Item One</td>
													<td>Ante turpis integer aliquet porttitor.</td>
													<td>29.99</td>
												</tr>
												<tr>
													<td>Item Two</td>
													<td>Vis ac commodo adipiscing arcu aliquet.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item Three</td>
													<td> Morbi faucibus arcu accumsan lorem.</td>
													<td>29.99</td>
												</tr>
												<tr>
													<td>Item Four</td>
													<td>Vitae integer tempus condimentum.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item Five</td>
													<td>Ante turpis integer aliquet porttitor.</td>
													<td>29.99</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2"></td>
													<td>100.00</td>
												</tr>
											</tfoot>
										</table>
									</div>
								</section>

								<section>
									<h3 class="major">Buttons</h3>
									<ul class="actions">
										<li><a href="#" class="button primary">Primary</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
									<ul class="actions">
										<li><a href="#" class="button">Default</a></li>
										<li><a href="#" class="button small">Small</a></li>
									</ul>
									<ul class="actions">
										<li><a href="#" class="button primary icon solid fa-download">Icon</a></li>
										<li><a href="#" class="button icon solid fa-download">Icon</a></li>
									</ul>
									<ul class="actions">
										<li><span class="button primary disabled">Disabled</span></li>
										<li><span class="button disabled">Disabled</span></li>
									</ul>
								</section>

								<section>
									<h3 class="major">Form</h3>
									<form method="post" action="#">
										<div class="fields">
											<div class="field half">
												<label for="demo-name">Name</label>
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="Jane Doe" />
											</div>
											<div class="field half">
												<label for="demo-email">Email</label>
												<input type="email" name="demo-email" id="demo-email" value="" placeholder="jane@untitled.tld" />
											</div>
											<div class="field">
												<label for="demo-category">Category</label>
												<select name="demo-category" id="demo-category">
													<option value="">-</option>
													<option value="1">Manufacturing</option>
													<option value="1">Shipping</option>
													<option value="1">Administration</option>
													<option value="1">Human Resources</option>
												</select>
											</div>
											<div class="field half">
												<input type="radio" id="demo-priority-low" name="demo-priority" checked>
												<label for="demo-priority-low">Low</label>
											</div>
											<div class="field half">
												<input type="radio" id="demo-priority-high" name="demo-priority">
												<label for="demo-priority-high">High</label>
											</div>
											<div class="field half">
												<input type="checkbox" id="demo-copy" name="demo-copy">
												<label for="demo-copy">Email me a copy</label>
											</div>
											<div class="field half">
												<input type="checkbox" id="demo-human" name="demo-human" checked>
												<label for="demo-human">Not a robot</label>
											</div>
											<div class="field">
												<label for="demo-message">Message</label>
												<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
											</div>
										</div>
										<ul class="actions">
											<li><input type="submit" value="Send Message" class="primary" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</form>
								</section>

							</article>

					</div>

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
