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

<title>Limpeza de Pele</title>
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
		response.sendRedirect("../Login.jsp");
	}
	Usuario usuario_carrega = new Usuario(userlogin);
	ResultSet dados = usuario_carrega.selectBy("idUsuario", "" + userlogin);
	dados.next();
%>

<body>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Limpeza de
			Pele:</h3>
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>Limpeza de pele: dos cuidados diários à limpeza profunda e
						profissional.</h2>
					<p>Uma limpeza de pele mais profunda, feita por profissionais
						que sabem avaliar seu tipo de pele e escolher os tratamentos mais
						adequados às suas necessidades, não limpa a pele apenas
						superficialmente, mas opera uma assepsia e esfoliação eficientes
						na eliminação de todas as impurezas e células mortas, além de
						incluir a extração de cravos e a remoção de milium. A limpeza de
						pele profunda também atua beneficamente na hidratação da pele e é
						um tratamento que, por incluir massagem facial, é extremamente
						relaxante.</p>
				</div>
				<div class="col">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="https://lh6.googleusercontent.com/LkRz8UOaeYzN4J1MZhxDt62kajwZXDg59Y_gjQfjwt7I4YHogfWrLXjptdh92wuXXL_Ceb5Zy4EoNitk17wgBLiK8LssevldDeBImwU4n63_q2gWtCvgvUc0M98Drsmz8iBAhMTU"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://static.baratocoletivo.com.br/2020/0203/oferta_15807635466626_destaque.jpg"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://conteudo.imguol.com.br/blogs/214/files/2018/07/iStock175422495-1024x683.jpg"
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