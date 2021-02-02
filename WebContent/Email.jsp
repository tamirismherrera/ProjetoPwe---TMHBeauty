<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Calligraffitti&display=swap" rel="stylesheet">
<title>TMHBeauty - Email Enviado</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
		<h3>Obrigada por se cadastrar !</h3>
		<p style="text-align: justify">Em instantes, você receberá um
			e-mail de confirmação de cadastro no seu e-mail :</p>
		<h4 class="address">
			<%
				out.println(request.getParameter("email"));
			%>
		</h4>
		<br/>
		<hr/>
		<div style="text-align: center;">
			<a href="Login.jsp" class="btn btn-light" style="background-color: #e8baaa;"><i class="fa fa-reply"
				aria-hidden="true"></i> Voltar</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>