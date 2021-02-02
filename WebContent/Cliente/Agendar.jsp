<%@page import="com.mysql.fabric.Response" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@page import="classes.Agendamento"%>
<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<jsp:include page="../Common/Navbar.html"/>
		<title>Agendar :</title>
		<style>
				body{
		background-image: url("https://image.freepik.com/fotos-gratis/fundo-de-textura-de-marmore-rosa-textura-de-marmore-abstrata_34936-405.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
	.container{
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
			
			int idAgendamento = 0;
			String nome	 = request.getParameter("nome");
			String email = request.getParameter("email");
			String cpf	= request.getParameter("cpf");
			String telefone	= request.getParameter("telefone");
			String servico			= request.getParameter("servico");
			String data			= request.getParameter("data");
			String hora			= request.getParameter("hora");
			
			String acao	= request.getParameter("acao");
			 
			if (acao != null) {
				Agendamento agendarServico = new Agendamento(idAgendamento, nome, email,cpf, telefone, servico, data, hora);
				agendarServico.save();
			}
			
			
		%>


		<div class="container" style="align-self: center; position: relative; height: 100vh; width: 100vw;padding:60px;">
			<h3 style="color: #b52b57">Agendar Serviço:</h3>
			<form id="frmAgendar"method="POST">
			<div class="row">
				<div class="col-md-6">
					<label for="email">Email: </label>
					<input type="email" id="email" name="email" class="form-control" placeholder="Digite o Email" required >
				</div>
				<div class="col-md-6">
					<label for="nome">Nome: </label>
					<input type="text" class="form-control" id="nome" name="nome" placeholder="Digite o Nome" required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label for="cpf">CPF: </label>
					<input type="text" class="form-control" id="cpf" name="cpf" placeholder="Digite o Cpf" required>
				</div>
				<div class="col-md-6">
					<label for="telefone">Telefone: </label>
					<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Digite o Telefone" required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label for="selecionarServico">Serviço</label>
				    <select class="form-control" id="exampleFormControlSelect1" name="servico">
				      <option value="0" selected disabled>Selecionar...</option>
				      <option value="Unhas">Unhas</option>
				      <option value="Cabeleleiro">Cabeleleiro</option>
				      <option value="Sobrancelhas">Sobrancelhas</option>
				      <option value="Limpeza de Pele">Limpeza de Pele</option>
				    </select>
				</div>
				<div class="col-md-3">
					<label for="example-date-input">Data do agendamento :</label>
					 <input class="form-control" name="data" type="date" value="2021-01-19" id="example-date-input">
				</div>
				<div class="col-md-3">
					<label for="example-time-input">Hora :</label>
					<input class="form-control" name="hora" type="time" value="13:45:00" id="example-time-input">
				</div>
			 </div>
			 <div class="col-12">
				 	<input type="hidden" name="acao" value="1">
					<button type="submit" id="btnAgendar" class="btn btn-light" style="background-color: #e8baaa; margin-top: 30px" onclick="acao.value='1'; this.form.submit();">Agendar</button> 
  				</div>	
			</form>
		</div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		
	</body>
</html>