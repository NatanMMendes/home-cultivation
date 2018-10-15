<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Home Cultivation - Contato</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<?php
	$menu = 'contato';

?>
<body>
	<?php @include_once('includes/header.php')?>

	<section class='content'>
		<section class='single contato'>
			<?php include('includes/bloco-texto.php')?>
			<?php include('includes/bloco-form-contato.php')?>
		</section>
	</section>

	<?php @include_once('includes/footer.php')?>
	</body>
</html>
