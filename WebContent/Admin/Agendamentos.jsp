<%@page import="classes.Agendamento"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="classes.Usuario"%>
<%@page import="classes.Agendamento"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<jsp:include page="NavbarAdmin.html" />

<title>Agendamentos</title>
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
%>
<%
	Agendamento agendamento = new Agendamento();
	String lista = agendamento.listAllMenu();
%>


<body>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<div class="row">
			<div class="col-md-6">

				<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Agendamentos:</h3>
			</div>
			<div class="col-md-6" style="text-align: right;">
				<a href="Dashboard.jsp" class="btn btn-light"><i
					class="fa fa-reply" aria-hidden="true"></i> Voltar</a>
			</div>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Data</th>
					<th scope="col">Horário</th>
					<th scope="col">Serviço</th>
					<th scope="col">Excluir</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%=lista%>
				</tr>

			</tbody>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	<jsp:include page="../Common/footer.html" />
</body>
</html>