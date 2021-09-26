<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	background-image:
		url('https://image.freepik.com/vector-gratis/asistencia-sanitaria-medica-color-azul_1017-26800.jpg');
}
h3, p {
	color: #;
}
</style>

</head>
<body>
	<header>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-success">
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav">
					<li class="nav-item active"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Principal">Inicio</a></li>
					<!-- Boton Navbar Inicio  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Usuario&accion=Listar">Usuarios</a></li>
					<!-- Boton Navbar Usuario  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Cliente">Clientes</a></li>
					<!-- Boton Navbar Cliente  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Proveedor">Proveedores</a></li>
					<!-- Boton Navbar Proveedor  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Producto">Productos</a></li>
					<!-- Boton Navbar Productos  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Ventas">Ventas</a></li>
					<!-- Boton Navbar Ventas  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="Controlador?menu=Reporte">Reportes</a></li>
					<!-- Boton Navbar Reportes  -->
				</ul>
			</div>
			<!-- Boton salir -->
				<a class="btn btn-outline-light" href="Controlador?accion=Menu&menu=Salir"> Salir</a>
		</nav>
		<!-- Fin Navbar -->
	</header>

	<main class="container-fluid">
		<div class="row mt-5">
			<div class="col-lg-5 col-md-6 col12">
				<div class="card">
					<div class="card-header bg-success text-light">
						<span>Sistema de registro de Clientes</span>
					</div>
					<div class="card-body">
						<form action="CRUD" method="POST">
							<p>
								Cédula: <input class="form-control" placeholder="Digite cedula" type="number" name="cedula" value = "${usuario.getCedula()}">
							</p>
							<p>
								Nombre:<input class="form-control" placeholder="Digite Nombre Completo" type="text" name="nombre" id="idNombre" value = "${usuario.getNombre()}">
							</p>
							<p>
								E-mail:<input class="form-control" placeholder="Digite E-mail" type="e-mail" name="E-mail" id="idE-mail" value = "${usuario.getEmail()}">
							</p>
							<p>
								Direccion : <input class="form-control" type="address" placeholder="Digite su Direccion "
									name="Direcion" value = "${usuario.getDirecion()}">
							</p>
							<p>
								Telefono: <input class="form-control" type="tel"
									placeholder="Digite su Telefono" name="Tel" value = "${usuario.getTelefono()}">
							</p>
							<div class="d-flex justify-content-between align-items-center"">
								<input type="submit" name="Agregar" value="Agregar" class="btn btn-success btn-sm"> 
								<input type="submit"name="Consultar" value="Consultar" class="btn btn-success btn-sm">
								<input type="submit" name="Eliminar" value="Eliminar" class="btn btn-success btn-sm"> 
								<input type="submit" name="Actualizar" value="Actualizar" class="btn btn-success btn-sm">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg col-mg col-sm col">
				<div class="card-header bg-success text-light d-flex justify-content-between align-items-center">
					<span>Presione para Listar los Clientes</span>
					<form action="CRUD" method ="POST">
						<input type="submit" name="Listar_Clientes" value="Listar_Clientes" class="btn btn-primary btn-sm">
					</form>
				</div>
				<div class="card-body">
					<table
						class="table bg-light table-bordered table-hover table-stripped">
						<thead>
							<tr>
								<th>Cedula</th>
								<th>Nombre</th>
								<th>E-mail</th>
								<th>Direccion</th>
								<th>Telefono</th>
								<th>Accion</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="usuario" items="${Clientes}">
								<tr>
									<td>${usuario.getCedula()}</td>
									<td>${usuario.getNombre()}</td>
									<td>${usuario.getEmail()}</td>
									<td>${usuario.getDireccion()}</td>
									<td>${usuario.getTelefono()}</td>
									<td><a class="btn btn-warning" href="CRUD?accion=editar&id=${usuario.getCedula()}">Editar</a>
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