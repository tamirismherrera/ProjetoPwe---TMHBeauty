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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	int idAgendamento = Integer.valueOf(request.getParameter("id"));
	Agendamento agendamento = new Agendamento(idAgendamento, "", "", "", "", "", "", "");

	agendamento.delete();

	response.sendRedirect("Agendamentos.jsp");
%>
</body>
<script>
	$(document).ready(function() {
		window.location.href("../Dashboard.jsp");
		alert("Agendamento excluido com sucesso!");
	});
</script>
</html>

