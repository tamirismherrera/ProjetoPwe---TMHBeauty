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
<jsp:include page="../Common/Navbar.html" />

<title>Unhas</title>
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

p {
	text-align: justify;
}
</style>



</head>

<%
	int userlogin = (int) session.getAttribute("userlogin");
	if (!(userlogin > 0)) {
		response.sendRedirect("Login.jsp");
	}
	Usuario usuario_carrega = new Usuario(userlogin);
	ResultSet dados = usuario_carrega.selectBy("idUsuario", "" + userlogin);
	dados.next();
%>

<body>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Sobrancelhas:</h3>
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>Emoldure seu olhar e ganhe mais expressividade fazendo um
						design de sobrancelhas.</h2>
					<p>As sobrancelhas, embora passem muitas vezes despercebidas,
						são detalhes importantes para a harmonia de nossos rostos. Elas
						emolduram nosso olhar, auxiliam na expressão de nossas emoções e
						facilitam a transmissão de boas impressões através dos olhos.
						Aperfeiçoar esse potencial é o objetivo do design de sobrancelhas,
						um procedimento estético cujo sucesso cresce a cada dia. No design
						de sobrancelhas é importante que se procure levar em conta suas
						características pessoais. O formato e as linhas naturais das
						sobrancelhas devem definir o tipo de intervenção a ser feita com a
						ajuda de um profissional de estética, isso para que o resultado
						traga o realce desejado ao olhar, aperfeiçoe a beleza da face e
						amplifique a expressividade por meio de equilibro e harmonia.</p>
				</div>
				<div class="col">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="https://poupafarma.com.br/wp-content/uploads/2019/04/2-3.jpg"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://d26lpennugtm8s.cloudfront.net/stores/001/130/574/products/design-sobrancelha-akacia1-b0114a1e1d0eb4e15f15956218341018-1024-1024.jpg"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://jornalinterativo.net/2016/wp-content/uploads/2019/10/Blog-Sobrancelhas-de-henna-e-henna-realista-1x1-1.png"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
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
				</div>

			</div>
			<div class="row">
				<div class="col-md-6">
					<a href="Agendar.jsp" class="btn btn-light"
						style="background-color: #e8baaa;">Agendar</a>
				</div>
				<jsp:include page="Servicos.html" />
			</div>
		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	<jsp:include page="../Common/footer.html" />
</body>

</html>