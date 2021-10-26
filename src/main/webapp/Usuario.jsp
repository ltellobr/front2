<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>Usuario</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	background-image:
		url('http://www.freeimageslive.com/galleries/backdrops/abstract/preview/twisted_wires.jpg');
}

h3, p {
	color: #;
}
</style>

</head>
<body>
	<header>
		<div class = "container">
		<div class = "row">
			<div class = "col text-center d-none d-lg-block col-md-12 col-lg-12 col-xl-12 rounded">
				<img alt="" src="img/rocking-horse.png" width="36">
			</div>
			<div class = "col-12 text-center" >
				<h2>Tienda Grupo6</h2>
			</div>
		</div>
	</div>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav">
					<li class="nav-item active"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Principal">Inicio</a></li>
					<!-- Boton Navbar Inicio  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Usuario">Usuarios</a></li>
					<!-- Boton Navbar Usuario  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Cliente">Clientes</a></li>
					<!-- Boton Navbar Cliente  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Proveedor">Proveedores</a></li>
					<!-- Boton Navbar Proveedor  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Productos">Productos</a></li>
					<!-- Boton Navbar Productos  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Ventas">Ventas</a></li>
					<!-- Boton Navbar Ventas  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary" href="Controlador?accion=Menu&menu=Reportes">Reportes</a></li>
					<!-- Boton Navbar Reportes  -->
				</ul>
			</div>
			<!-- Boton salir -->
				<a class="btn btn-primary" href="Controlador?accion=Menu&menu=Salir"> Salir</a>
		</nav>
		<!-- Fin Navbar -->
	</header>
	<main class="container-fluid">
		<div class="row mt-5">
			<div class="col-lg col-mg col-sm col">
				<div class="card">
					<div class="card-header bg-primary text-light">
						<span>Sistema de registro de Usuarios</span>
					</div>
					<div class="card-body">
						<form action="ControladorUsuarios" method="GET">
						
						<!-- VALIDACIIONES -->
							<c:if test="${validacion == 0}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>Por favor digite el campo cedula</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 1}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>Por favor digite todos los campos para agregar el usuario</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 2}">
							<div class = "card">
								<div class="card-body bg-primary rounded">
									<h5 class = text-center>Usuario creado</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 3}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>Ha habido un error :(</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 4}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>El usuario ya existe</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 5}">
							<div class = "card">
								<div class="card-body bg-warning rounded">
									<h5 class = text-center>Usuario eliminado</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 6}">
							<div class = "card">
								<div class="card-body bg-primary rounded">
									<h5 class = text-center>Usuario Modificado</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 7}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>El usuario no existe no se puede modificar</h5>
								</div>
							</div>
							</c:if>	
							<c:if test="${validacion == 8}">
							<div class = "card">
								<div class="card-body bg-danger rounded">
									<h5 class = text-center>El usuario no existe</h5>
								</div>
							</div>
							</c:if>	
							
						<!--FIN VALIDACIONES  -->
							<p>
								C�dula: <input class="form-control" placeholder="Digite cedula" type="number" name="cedula" value = "${usuarios.getCedula_usuario()}">
							</p>
							<p>
								Nombre:<input class="form-control" placeholder="Digite Nombre Completo" type="text" name="nombre" id="idNombre" value = "${usuarios.getNombre_usuario()}">
							</p>
							<p>
								E-mail:<input class="form-control" placeholder="Digite correo electronico" type="e-mail" name="email" id="idEmail" value = "${usuarios.getEmail_usuario()}">
							</p>
							<p>
								Usuario : <input class="form-control" type="text" placeholder="Digite Usuario"
									name="user" value = "${usuarios.getUsuario()}">
							</p>
							<p>
								Contrase�a: <input class="form-control" type="password"
									placeholder="Escriba su Contrase�a" name="pass" value = "${usuarios.getPassword()}">
							</p>
							<div class="d-flex justify-content-between align-items-center"">
								<input type="submit" name="Agregar" value="Agregar" class="btn btn-primary btn-sm"> 
								<input type="submit"name="Consultar" value="Consultar" class="btn btn-primary btn-sm">
								<input type="submit" name="Eliminar" value="Eliminar" class="btn btn-primary btn-sm"> 
								<input type="submit" name="Actualizar" value="Actualizar" class="btn btn-primary btn-sm">
							</div>
						</form>
					</div>

				</div>
			</div>
			<div class="col-lg col-mg col-sm col">
				<div class="card-header bg-primary text-light d-flex justify-content-between align-items-center">
					<span>Presione para Listar los usuarios</span>
					<form action="ControladorUsuarios" method ="GET">
						<input type="submit" name="Listar_Usuarios" value="Listar_Usuarios" class="btn btn-primary btn-sm">
					</form>
				</div>
				<div class="card-body">
					<table
						class="table bg-light table-bordered table-hover table-stripped">
						<thead>
							<tr>
								<th>Cedula</th>
								<th>E-mail</th>
								<th>Nombre</th>
								<th>Contrase�a</th>
								<th>Usuario</th>
								<th>Accion</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="usuarios" items="${lista}">
								<tr>
									<td>${usuarios.getCedula_usuario()}</td>
									<td>${usuarios.getEmail_usuario()}</td>
									<td>${usuarios.getNombre_usuario()}</td>
									<td>${usuarios.getPassword()}</td>
									<td>${usuarios.getUsuario()}</td>
									<td><a class="btn btn-warning" href="ControladorUsuarios?editar=editar&id=${usuarios.getCedula_usuario()}">Editar</a>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>

	<!-- Script de bootstrap5  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous">
		
	</script>
</body>
</html>