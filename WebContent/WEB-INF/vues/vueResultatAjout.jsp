<!DOCTYPE html>
<html lang="fr">
<%
	String libelle = (String)request.getAttribute("libelle");
	String aoc = (String)request.getAttribute("aoc");
%>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	<% if(libelle!=null) {%>
	Libellé : <%= libelle %></br>
	AOC : <%= aoc %></br>
	
	<a href="?action=visualiser">Vue liste variété</a>
	<% }
	   else { %>
	Cette variété existe déjà.</br>
	<a href="?action=visualiser">Vue liste variété</a>
	<% } %>
	</body>
</html>