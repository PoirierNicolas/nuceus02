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
	Libell� : <%= libelle %></br>
	AOC : <%= aoc %></br>
	
	<a href="?action=visualiser">Vue liste vari�t�</a>
	<% }
	   else { %>
	Cette vari�t� existe d�j�.</br>
	<a href="?action=visualiser">Vue liste vari�t�</a>
	<% } %>
	</body>
</html>