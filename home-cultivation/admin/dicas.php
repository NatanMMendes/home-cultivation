<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Home Cultivation - Admin</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <div class="outer-div">
        <h2>Dicas</h2>
        <div class="inner-div">
            <h2>Inserir</h2>
            <form method="post" action="">  
                Name: <input type="text" name="name" value="">
                <br><br>
                E-mail: <input type="text" name="email" value="">
                <br><br>
                Website: <input type="text" name="website" value="">
                <br><br>
                Comment: <textarea name="comment" rows="5" cols="40"></textarea>
                <br><br>
                <input type="submit" name="submit" value="Submit">  
            </form>
        </div>
        <div class="inner-div">
            <h2>Listar</h2>
            <ul class='list-admin'>
                <li class='admin-item'><a href='projetos'>Projetos</a></li>
                <li class='admin-item'><a href='plantas'>Plantas</a></li>
                <li class='admin-item'><a href='dicas'>Dicas</a></li>
                <li class='admin-item'><a href='contatos'>Contatos</a></li>
            </ul>
        </div>
    </div>
    <script src="script.js"></script>
</html>
