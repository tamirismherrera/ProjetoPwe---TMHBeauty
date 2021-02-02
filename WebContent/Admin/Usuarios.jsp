<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="database.DBQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Usuario"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=UTF-8">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<jsp:include page="NavbarAdmin.html" />
<title>Usu�rios</title>

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
input {
	border: none;
	outline: 0;
}
</style>
</head>
<body>
	<%
		int userLogin = 0;
		userLogin = (int) session.getAttribute("userlogin");
		if (!(userLogin > 0)) {
			response.sendRedirect("../Login.jsp");
		}
	%>

	<div class="container"
		style="align-self: center; position: relative; height: 100vh; width: 100vw; padding: 60px;">
		<div class="row">
			<div class="col-md-6">

				<h3 style="color: #b52b57; margin-bottom: 1.5rem;">Usu�rios:</h3>
			</div>
			<div class="col-md-6" style="text-align: right;">
				<a href="Dashboard.jsp" class="btn btn-light"><i
					class="fa fa-reply" aria-hidden="true"></i> Voltar</a>
			</div>
		</div><div style="max-width: 6000px; max-height: 500px; overflow: auto;">
		<form id="frmUsuarios" action="EditarUsuario.jsp" method="POST">
			<table class="table" id="myTable">
				<thead>

					<tr>
						<th scope="col">#</th>
						<th scope="col">Nome</th>
						<th scope="col">Nivel Usu�rio</th>
						<th scope="col">Email</th>
						<th scope="col">Cpf</th>
						<th scope="col">Telefone</th>
						<th scope="col">Excluir</th>
					</tr>
				</thead>
				<tbody>

					<tr>
					<%
						String html = "";
						try {
							ResultSet result = new Usuario().selectAll();
							while (result.next()) {
								html += "<tbody>" +
										"<tr>" + 
										"<td>" + "<input type='radio' name='idUsuario' value='" + result.getInt("idUsuario") + "'>" + "</td>" +  
										"<td>"
										+ result.getString("nome") + 
										"</td>"+
										"<td>"
										+ result.getString("idNivelUsuario") + 
										"</td>"+
										"<td>"
										+ result.getString("email") + 
										"</td>"+
										"<td>"
										+ result.getString("cpf") + 
										"</td>"+
										"<td>"
										+ result.getString("telefone") + 
										"</td>"+
										"<td>"+
										"<a href='ExcluirUsuario.jsp?id=" + result.getString("idUsuario")
										+ "'><i class=\"fa fa-trash\" aria-hidden=\"true\"></a>" +
										"</td>"+
										"</tr>" + "</tbody>";
							}
						} catch (SQLException e) {
							e.printStackTrace();
						}
						html += "<tr>" + 
							 	"<td>" + "<button type='submit' class='btn btn-light' style='background-color: #e8baaa;' id='btnUpdate'>Alterar</button>" + "</td>" +
						  		"</tr>"; 
						out.write(html);
					%>
					</tr>
				</tbody>
			</table>
			</form>
		</div>



	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	<jsp:include page="../Common/footer.html" />

</body>
</html>