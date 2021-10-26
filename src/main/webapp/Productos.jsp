<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
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
	<script type="text/javascript" src="./Codigos.js"></script>
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
		<nav class="navbar navbar-expand-lg navbar-light bg-primary">
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav">
					<li class="nav-item active"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Principal">Inicio</a></li>
					<!-- Boton Navbar Inicio  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Usuario">Usuarios</a></li>
					<!-- Boton Navbar Usuario  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Cliente">Clientes</a></li>
					<!-- Boton Navbar Cliente  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Proveedor">Proveedores</a></li>
					<!-- Boton Navbar Proveedor  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Productos">Productos</a></li>
					<!-- Boton Navbar Productos  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Ventas">Ventas</a></li>
					<!-- Boton Navbar Ventas  -->
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-primary"
						href="Controlador?accion=Menu&menu=Reportes">Reportes</a></li>
					<!-- Boton Navbar Reportes  -->
				</ul>
			</div>
			<!-- Boton salir -->
			<a class="btn btn-primary"
				href="Controlador?accion=Menu&menu=Salir"> Salir</a>
		</nav>
		<!-- Fin Navbar -->
	</header>
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col">
				<div class="card bg-transparent col-12 border-0">
					<div class="mb-3">
						<!-- Cargar archivo -->
						<form method="post" name="formulario"
							enctype="multipart/form-data">
							<div class="row">
								<div class="col-11">
									<input type="file"
										name="archivo" class="form-control" id="archivo">
								</div>
								<div class="col-1">
									<input type="submit" value="Procesar" name="Procesar" onclick="cargarArchivo(archivo)" class="btn btn-primary aling-center">
								</div>
							</div>
							<input type="hidden" name="nombre" value="">
							<input type="hidden" name="nombre2" value="">
						</form>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row mt-5">
						<div class="col-12">
					<!-- VALIDACIONES -->
						<div class="card bg-transparent border-0">
							<c:choose>
								<c:when test="${error == 0}">
									<div class="card-body bg-danger rounded" >
									<h5 class=text-center>Error: datos inv�lidos, Revise archivo plano</h5>
								</div>
								</c:when>
								<c:when test="${error == 1}">
									<div class="card-body bg-danger rounded">
									<h5 class=text-center>Error: no se seleccion� archivo para cargar</h5>
								</div>
								</c:when>
								<c:when test="${error == 2}">
									<div class="card-body bg-primary rounded">
									<h5 class=text-center>Archivo Cargado Exitosamente</h5>
								</div>
								</c:when>
								<c:when test="${error == 3}">
								<div class="card-body bg-danger rounded">
									<h5 class=text-center>Error: formato de archivo inv�lido</h5>
								</div>
								</c:when>
								<c:when test="${error == 4}">
								<div class="card-body bg-danger rounded">
									<h5 class=text-center>Algunos registros no se cargaron: por favor revise si a�adio el nit en modulo proveedores</h5>
								</div>
								</c:when>
								<c:when test="${error == 5}">
								<div class="card-body bg-danger rounded">
									<h5 class=text-center>Algunos registros no se han cargado</h5>
									<h5 class=text-center>Los productos se han cargado</h5>
									<c:if test="${registros2 != '' }">
										<h5 class=text-center>,los productos con los codigos: "${registros2}" ya existen en la base de datos</h5>
									</c:if>
									<c:if test="${registros == ''}">
										<h5 class=text-center>,los demas registros se cargaron correctamente</h5>
									</c:if>
									<c:if test="${registros != ''}">
										<h5 class=text-center>,hay registros donde el proveedor no existe en base de datos porfavor verifique el modulo proveedores</h5>
										<h5 class=text-center>el proveedor ${registros} no existe</h5>
									</c:if>
								</div>
								</c:when>
							</c:choose>
						</div>
							<iframe name="null" style="display: none;"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="container">
			<div class="row mt-5">
				<div class="col-12"></div>
			</div>
		</div>
	<div class="card">
		<div
			class="card-header bg-primary text-light d-flex justify-content-end">
			<form action="ControladorProductos" method = "GET">
				<input type="submit" name="Listar" value="Listar"
					class="btn btn-primary" />
			</form>
		</div>
		<div class="card-body">
			<table
				class="table bg-light table-bordered table-hover table-stripped">
				<thead>
					<tr>
						<th>Codigo producto</th>
						<th>IVA compra</th>
						<th>NIT proveedor</th>
						<th>Nombre producto</th>
						<th>Precio compra</th>
						<th>Precio venta</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="productos" items="${lista}">
						<tr>
							<td>${productos.getCodigo_producto()}</td>
							<td>${productos.getIvacompra()}</td>
							<td>${productos.getNitproveedor()}</td>
							<td>${productos.getNombre_producto()}</td>
							<td>${productos.getPrecio_compra()}</td>
							<td>${productos.getPrecio_venta()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
	<!-- Script de bootstrap5  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous">

	</script>
</body>
</html>