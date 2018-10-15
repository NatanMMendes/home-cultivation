<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Home Cultivation - Home</title>
	<meta charset="utf-8">
	<link rel="icon" href="/assets/logo.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/assets/logo.ico" type="image/x-icon" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<?php
	$menu = 'home';
?>
<body>
	
	<?php @include_once('includes/header.php');?>
	<section class='content'>
		<section class='coluna1'>
			<?php include('includes/bloco-texto.php');?>
			<div class='row'>
			<?php 
				$projetos = Helper::obterProjetoAleatorio('todos',$con);
				foreach($projetos as $projeto){
					$id_projeto = $projeto['ID_Projeto'];
					$imagens = Helper::obterImagensProjeto($id_projeto,$con);
					if($imagens != 0){
						include('includes/bloco-slider.php');
					}
				}
			?>			</div>
		</section>
		<section class='coluna2'>
			<?php include('includes/widget-video.php');?>
			<?php include('includes/widget-audio.php');?>
			<?php include('includes/widget-dica.php');?>
		</section>
	</section>
	<?php @include_once('includes/footer.php');?>
	</body>
</html>
