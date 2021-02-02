<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.fabric.Response"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<jsp:include page="../Common/Navbar.html"/>

<title>Promoções</title>
<style>
body {
	background-image:
		url("https://image.freepik.com/fotos-gratis/fundo-de-textura-de-marmore-rosa-textura-de-marmore-abstrata_34936-405.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	background-color: white;
}
</style>



</head>

<%
	int userlogin = (int) session.getAttribute("userlogin");
	if (!(userlogin > 0)) {
		response.sendRedirect("../Login.jsp");
	}
	Usuario usuario_carrega = new Usuario(userlogin);
	ResultSet dados = usuario_carrega.selectBy("idUsuario", "" + userlogin);
	dados.next();
%>

<body>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Aproveite já:
		</h3>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="card" style="width: 18rem;">
						<img
							src="https://destetica.com.br/wp-content/uploads/2019/11/download-1.jpg"
							class="card-img-top" alt="..." height="200px">
						<div class="card-body">
							<h5 class="card-title">Pé e Mão</h5>
							<p class="card-text">R$ 55,00 por R$ 45,00</p>
							<a href="Agendar.jsp" class="btn btn-light"
								style="background-color: #e8baaa">Agendar</a>
						</div>

					</div>
				</div>
				<div class="col">
					<div class="card" style="width: 18rem;">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_W3N3ny_9CbUCScdo76WjNMCvqfkSbq7RNg&usqp=CAU"
							class="card-img-top" alt="..." height="200px">
						<div class="card-body">
							<h5 class="card-title">Corte e Escova</h5>
							<p class="card-text">R$ 120,00 por R$ 100,00</p>
							<a href="Agendar.jsp" class="btn btn-light"
								style="background-color: #e8baaa">Agendar</a>
						</div>

					</div>
				</div>
				<div class="col">
					<div class="card" style="width: 18rem;">
						<img
							src="https://static.vix.com/es/sites/default/files/styles/large/public/t/tenirse_el_cabello_durante_el_embarazo.jpg"
							class="card-img-top" alt="..." height="200px">
						<div class="card-body">
							<h5 class="card-title">Coloração</h5>
							<p class="card-text">R$ 350,00 por R$ 250,00</p>
							<a href="Agendar.jsp" class="btn btn-light"
								style="background-color: #e8baaa">Agendar</a>
						</div>

					</div>
				</div>
			</div>

		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<jsp:include page="../Common/footer.html" />
</body>
</html>