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
		response.sendRedirect("../Login.jsp");
	}
	Usuario usuario_carrega = new Usuario(userlogin);
	ResultSet dados = usuario_carrega.selectBy("idUsuario", "" + userlogin);
	dados.next();
%>

<body>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Manicure e
			Pedicure:</h3>
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>A perfeição estética e a segurança de cuidar de suas unhas
						num centro estético especializado.</h2>
					<p>Cuidar das mãos e dos pés contratando serviços de manicure e
						pedicure profissional se tornou uma prática tão comum entre as
						mulheres que, hoje em dia, qualquer salão de beleza oferece essa
						categoria de serviços às suas clientes. Todavia, prestar um
						atendimento de manicure e pedicure com excelência, que faça seu
						dinheiro realmente valer a pena e que não traga perigos à saúde
						(pelo risco de contaminação e transmissão de doenças através de
						equipamentos mal higienizados) é algo que exige grande
						profissionalismo.</p>
				</div>
				<div class="col">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="https://unhasamei.com/wp-content/uploads/2019/08/unhas-decoradas-dos-pes-4.jpg"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://www.belissimaestetica.com.br/imagens/manicure-pedicure.jpg"
									class="d-block w-100" alt="..."
									style="height: 350px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f00000sqgb7EAA/5ad8df54e4b033ed75707ecd.jpg&w=710&h=462"
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