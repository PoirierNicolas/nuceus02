<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html>
<%
	MetierVarietes metier = new MetierVarietes();
%>
<html lang="fr">
<link href="style/bootstrap-3.3.2-dist/css/bootstrap.css" rel="stylesheet">
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	<a href="?action=renseignerAjout">Ajouter variété</a>
		<div class="text-center">
			<h1>Liste des variétés de Noix</h1>
		</div>
	<hr/>
		<% 
			List<Variete> varietes = metier.consulter();
		%>
		<div class="container">
			<div class="col-lg-12">
				<div class="col-lg-3"></div>
						<table border="1" style="border-collapse:collapse" class="table-hover col-lg-6">
							<thead>
								<tr>
									<th>Libellé</th>
									<th>AOC</th>
								</tr>
							</thead>
							<tbody>
								<%
									String test;
									for(Variete variete : varietes){
										if(variete.isAoc()){
											test="Oui";
										}
										else{
											test="Non";
										}
								%>
								<tr>
									<td>
										<%= variete.getLibelle() %>
									</td>
									<td>
										<%= test %>
									</td>
								</tr>
							<%
									}	
							%>
							</tbody>
						</table>
				<div class="col-lg-3"></div>
			</div>
		</div>
	</body>
</html>