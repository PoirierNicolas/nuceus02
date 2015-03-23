<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		<form method=get>
			<label for="libelle">Libelle: </label>
			<input type="text" id="libelle" name="libelle" value="" size="20"/>
			<label for="aoc">AOC:  </label>
			<input type="checkbox" id="aoc" name="aoc" value="aoc"/>
			<input type="hidden" name="action" value="ajouter" />
			<input type="submit" value="Ajouter" />
		</form>
		<a href="?action=annulerAjout">Annuler</a>
	</body>
</html>