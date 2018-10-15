<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Home Cultivation - Projetos</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<?php
	$menu = 'projetos';
?>
<body>
	<?php @include_once('includes/header.php')?>

	<section class='content'>
		<section class='single'>
			<?php 
				$projetos = Helper::obterProjetos('todos',$con);
				foreach($projetos as $projeto){
					$id_projeto = $projeto['ID_Projeto'];
					$imagens = Helper::obterImagensProjeto($id_projeto,$con);
					if($imagens != 0){
						include('includes/bloco-slider.php');
					}
				}
			?>
		</section>
	</section>

	<?php @include_once('includes/footer.php')?>
	</body>
</html>
