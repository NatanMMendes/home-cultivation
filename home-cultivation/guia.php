<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Home Cultivation - Guia</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<?php
	$menu = 'guia';

?>
<body>
	<?php @include_once('includes/header.php')?>

	<section class='content'>
		<section class='single'>
			<?php 
				$categorias = Helper::obterTiposPlantas('todos',$con);
				foreach($categorias as $categoria){
					$id_tipo = $categoria['ID_Tipo_Planta'];
					$Descricao = $categoria['Descricao'];
					$plantas = Helper::obterPlantas($id_tipo,$con);
					if($plantas != 0){
						echo "<h3>$Descricao</h3>";
						include('includes/bloco-lista.php');
					}
				}
			?>
		</section>
	</section>

	<?php @include_once('includes/footer.php')?>
	</body>
</html>
