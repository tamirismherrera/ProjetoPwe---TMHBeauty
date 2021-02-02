<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Calligraffitti&display=swap"
	rel="stylesheet">
<title>TMHBeauty - Login</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<style>
body {
	background-image:
		url("https://aberturasimples.com.br/wp-content/uploads/2019/06/shutterstock_659987545.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	background-color: white;
}

.wrapper {
	padding: 20px;
	background-color: white;
	margin: 50px auto;
	width: 400px;
	height: 400px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

.wrapper h1 {
	font-family: 'Calligraffitti', cursive;
	text-align: center;
}

a {
	text-decoration: none;
	color: #d7876b;
}

a:hover {
	color: rgba(255, 152, 0, 0.79);
	text-decoration: underline;
}
</style>

</head>
<body>
	<div class="wrapper">
		<h1 style="color: #b52b57">TMH Beauty</h1>
		<hr>
		<form id="frmLogin" method="post">
			<div class="form-group">
				<label for="inputEmail">Email:</label> <input type="email"
					name="user" class="form-control" placeholder="Digite seu email"
					required>
			</div>
			<div class="form-group">
				<label for="inputPassword">Senha:</label> <input type="password"
					name="pass" class="form-control" placeholder="Digite sua senha"
					required>
			</div>
			<div style="text-align: center;">
				<button id="btnSendFrmLogin" type="submit" class="btn btn-light"
					style="background-color: #e8baaa;" value="Entrar">Entrar</button>
				<hr>
				<div class="crtacc">
					Ainda não é cadastrado? Clique <a href="Cadastro.jsp">aqui</a>
				</div>
			</div>
		</form>

	</div>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btnSendFrmLogin").click(function() {

			var formData = $("#frmLogin").serialize();
			$.post("testeForm.jsp", formData, function(data, status) {
				var objReturn = $.parseJSON(data);
				if (objReturn.login == "true") {
					window.location.href = "Admin/Dashboard.jsp";
				} else {
					alert("Email ou senha inválido");
				}
			});
		});
	});
</script>
</html>