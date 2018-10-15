<?php 
$dicas = Helper::obterDicaAleatoria('todos',$con);
?>
<div class='widget dica'>
    <p><?php echo $dicas['Mensagem'];?></p>
</div>