<?php
require_once getcwd()."\BD\MySQL.class.php";
//dados de login e registros
class Usuario{
    
    var $id;
    var $usuario;
    var $senha;
    var $email;

    public function __construct($id = null, $usuario = null , $nome = null, $senha = null, $email = null){
        $this->id = $id;
        $this->usuario = $usuario;
        $this->senha = $senha;
        $this->email = $email;
    }

    public function __get($atributo){
        return $this->$atributo;
    }

    public function __set($atributo, $valor){
        $this->$atributo = $valor;
    }

    public static function registrar(){
        $conexao = new MySQL();
        $sql = "INSERT INTO user(id, usuario, email, senha, image) VALUES (null,'". $usuario ."','". $email ."','". $senha ."', null";
        $conexao->executa($sql);
}