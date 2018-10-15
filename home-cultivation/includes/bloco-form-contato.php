<?php 
if(!empty($_POST)){
    $args = $_POST;
    $return = Helper::inserirContato($args,$con);
    if($return){
        echo "<p class ='sucess'>Enviado com Sucesso!</p>";
    }else{
        echo "<p class ='error'>Erro ao Enviar.</p>";
    }
}
?>
<div class='row-text'>
    <img class='img-contato'src="assets/contato.png" />
    <form id="form-contato" class="form-contato" method="post" action="">
        <div class="form_description">
            <h2>Entre em contato conosco</h2>
            <p>Duvidas , sugestões e criticas são bem vindas.</p>
        </div>
        <div>
            <label>Nome:</label>
            <div>
                <input  name="Nome"  type="text" maxlength="255" value=""> 
            </div>
            <label>Email:</label>
            <div>
                <input name="Email"  type="text" maxlength="255" value=""> 
            </div>

            <label>Escreva da maneira que quiser: </label>
            <div>
                <textarea name="Mensagem"></textarea> 
            </div>
            <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit">
        </div>
    </form>
</div>