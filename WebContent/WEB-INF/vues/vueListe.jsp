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
	
		<div class="text-center">
			<h1>Liste des variétés de Noix</h1>
		</div>
	<hr/>
		<% 
			List<Variete> varietes = (List<Variete>)request.getAttribute("varietes");
		%>
		<div class="container">
		<a href="?action=renseignerAjout">Ajouter variété</a>
			<div class="col-lg-12">
			
				<div class="col-lg-3"></div>
						<table border="1" style="border-collapse:collapse" class="table-hover col-lg-6 text-center">
							<thead>
								<tr>
									<th>Libellé</th>
									<th>AOC</th>
									<th>Supprimer</th>
								</tr>
							</thead>
							<tbody>
								<%
									String test;
									int i=0;
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
									<td>
										<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="<%="#myModal"+i %>"><div class="glyphicon glyphicon-ban-circle text-center"></div></button>
										<div class="modal fade" id="<%="myModal"+i %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  											<div class="modal-dialog">
    											<div class="modal-content">
      												<div class="modal-header">
        												<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        												<h4 class="modal-title" id="myModalLabel">Modal title</h4>
      												</div>
      												<div class="modal-body">
        												Voulez-vous supprimer la variete : <%= variete.getLibelle() %>
											      	</div>
											      	<div class="modal-footer">
											        	<button type="button" class="btn btn-default" data-dismiss="modal">Non</button>
											        	<button type="button" class="btn btn-primary" onclick="location.href='?action=supprimer&value=<%= variete.getLibelle() %>'">Oui</button>
											      	</div>
											    </div>
											 </div>
										</div>
									</td>
								</tr>
							<%
								i++;	}	
							%>
							</tbody>
						</table>
				<div class="col-lg-3"></div>
			</div>
		</div>
		<script src="style/bootstrap-3.3.2-dist/js/jQuery.js"></script>
		<script src="style/bootstrap-3.3.2-dist/js/bootstrap.js"></script>
	</body>
</html>