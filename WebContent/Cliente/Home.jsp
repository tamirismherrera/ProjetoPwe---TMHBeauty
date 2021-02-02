<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Usuario"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<jsp:include page="../Common/Navbar.html" />
<title>Home</title>
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

<body>

	<%
		int userlogin = (int) session.getAttribute("userlogin");
		if (!(userlogin > 0)) {
			response.sendRedirect("../Login.jsp");

		}
	%>
	<%
		Usuario usuario_carrega = new Usuario(userlogin);
		ResultSet dados = usuario_carrega.selectBy("idUsuario", "" + userlogin);

		dados.next();
		String idUser = "" + userlogin;
		String email = dados.getString("email");
		String nome = dados.getString("nome");
	%>
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://claudiacabeloeestetica.com.br/wp-content/uploads/2018/10/corte-e-escova.jpg"
					class="d-block w-100" alt="..." style="height: 300px; width: 100%;">
			</div>
			<div class="carousel-item">
				<img
					src="https://www.belissimaestetica.com.br/imagens/manicure-pedicure.jpg"
					class="d-block w-100" alt="..." style="height: 300px; width: 100%;">
			</div>
			<div class="carousel-item">
				<img
					src="https://image.freepik.com/fotos-gratis/cabeleireiro-feminino-fazendo-penteado-para-mulher-ruiva-no-salao-de-beleza_176420-4474.jpg"
					class="d-block w-100" alt="..." style="height: 300px; width: 100%;">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<div class="jumbotron" style="background-color: white;">
			<h1 class="display-4">
				Bem-Vindo,
				<%
				out.println(nome);
				%>
				!!
			</h1>
			<p class="lead">Amor correspondido é uma maravilha, mas você já
				passou um dia incrível no salão de beleza com tudo que tem direito?
				Então você precisa vir aqui! Estamos com um pacote exclusivo para
				você ficar ainda mais linda e o melhor: Com um preço baixíssimo!
				Marca logo um horário com a gente!</p>
			<hr class="my-4">
			<p>A beleza começa no momento em que você decide ser você mesma.</p>
			<a class="btn btn-light" style="background-color: #e8baaa;"
				href="Promocao.jsp" role="button">Ver Promoções</a>

		</div>

	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>