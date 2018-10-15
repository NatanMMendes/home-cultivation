<?php
include_once 'db.php';
$db = new db();
$con = $db->connectDataBase();
class Helper {
    // Insert
    public static function inserirProjeto($args,$con){
        $sql = "update cliente set 
          nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
          where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }
    }

    public static function inserirPlanta($args,$con){
        $sql = "update cliente set 
        nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
        where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }
    }

    public static function inserirContato($args,$con){
        $sql = "INSERT INTO tb_contatos (nome, email, mensagem) VALUES ('".$args['Nome']."','".$args['Email']."', '".$args['Mensagem']."')";
        if ($con->query($sql) === TRUE) {
            $return = true;
        } else {
            $return = false;
        }
        return $return;
    }

    public static function inserirImagem($args,$con){
        $sql = "update cliente set 
        nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
        where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }
    }
    
    public static function inserirDicas($args,$con){
        $sql = "update cliente set 
        nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
        where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }
    }

    // Update
    public static function alterarProjeto($args,$con){
        $sql = "update cliente set 
          nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
          where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }
    }

    public static function alterarPlanta($args,$con){
        $sql = "update cliente set 
        nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
        where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        }  
    }

    public static function alterarImagem($args,$con){
        $sql = "update cliente set 
        nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
        where idcliente = ".$id;

        if(mysql_query($sql,$con)){
            $msg = "Atualizado com sucesso!";
        }else{
            $msg = "Erro ao atualizar!";
        } 
    }
    
    public static function alterarDicas($args,$con){
        $sql = "update cliente set 
          nome = '".$nome."', email = '".$email."',telefone = '".$tel."'
          where idcliente = ".$id;

            if(mysql_query($sql,$con)){
                $msg = "Atualizado com sucesso!";
            }else{
                $msg = "Erro ao atualizar!";
            }
    }

    
    // Select
    public static function obterImagensProjeto($id_projeto,$con){
        $sql = "select * from tb_projetos_imagens where ID_Projeto=$id_projeto";

        $result = $con->query($sql);


        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return 0;
        }
    }

    public static function obterProjetoAleatorio($args,$con){
        $sql = "select * from tb_projetos ORDER BY rand() limit 1";

        $result = $con->query($sql);


        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return 0;
        }
    }

    
    
    public static function obterProjetos($args,$con){
        $sql = "select * from tb_projetos";

        $result = $con->query($sql);


        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return 0;
        }
    }

    public static function obterDicaAleatoria($args,$con){
        $sql = "select * from tb_dicas ORDER BY rand() limit 1";
        $result = $con->query($sql);
        if ($result->num_rows > 0) {
            return $result->fetch_assoc();
        } else {
            return 0;
        }
    }

    public static function obterPlantas($id_tipo_planta,$con){
        $sql = "select * from tb_plantas where ID_Tipo=$id_tipo_planta";

        $result = $con->query($sql);


        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return 0;
        }
    }

    public static function obterTiposPlantas($args,$con){
        $sql = "select * from tb_tipo_plantas";
        $result = $con->query($sql);

        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return 0;
        }
    }
}
?>