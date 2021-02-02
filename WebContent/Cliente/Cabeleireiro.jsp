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

<title>Cabeleireiro</title>
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
		<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Cabeleireiro:
		</h3>
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>Serviço especializado para que você encontre a sua melhor
						versão.</h2>
					<p>Nosso serviço de cabeleireiro tem as melhores soluções para
						todos os gostos e necessidades, tanto para quem deseja mudar seu
						visual por meio de um novo corte de cabelos quanto para quem pensa
						em alterar os contornos do rosto com novas colorações ou luzes.
						Temos ainda a melhor assessoria para aqueles que querem cuidar de
						seus cabelos através de uma boa hidratação ou ainda uma escova
						para quem quer deixar os cabelos ainda mais bonitos.</p>
				</div>
				<div class="col">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="https://i.pinimg.com/originals/84/54/9a/84549aeb0ad7e5a1de5ceaeff931072c.jpg"
									class="d-block w-100" alt="..."
									style="height: 300px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://2.bp.blogspot.com/-tpaQcdqUXUQ/XI52v3ozpMI/AAAAAAAAGZI/8R2rUhCvTZsTGS-j7FQQVmkr3MrGCbqKACLcBGAs/s1600/cortes-de-cabelos-2019-54.jpg"
									class="d-block w-100" alt="..."
									style="height: 300px; width: 100%;">
							</div>
							<div class="carousel-item">
								<img
									src="https://i.pinimg.com/originals/2d/c2/f2/2dc2f22ac5b1e0761a17b9f9cb962883.jpg"
									class="d-block w-100" alt="..."
									style="height: 300px; width: 100%;">
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