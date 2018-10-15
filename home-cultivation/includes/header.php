<?php 
    header('Content-Type: text/html; charset=utf-8');
    include_once 'config/class.php'; 
?>
<header>
    <div class="header">
        <a class='logo' href="http://www.homecultivation.com.br"><img src="assets/logo-x50.png"></a>
        <div class="header-right">
            <a <?php if($menu=='home') echo 'class="active"' ?> href="/">Home</a>
            <a <?php if($menu=='projetos') echo 'class="active"' ?> href="/projetos">Projetos</a>
            <a <?php if($menu=='guia') echo 'class="active"' ?> href="/guia">Guia</a>
            <a <?php if($menu=='contato') echo 'class="active"' ?> href="/contato">Contato</a>
        </div>
    </div>
</header>