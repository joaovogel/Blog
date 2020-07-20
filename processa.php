<?php
    require getcwd()."\src\Usuario.php";
    
    if (isset($_POST['cadastro'])) {
        $usuario = new Usuario(null, , $_POST["senha"],$_POST["email"] );
        
        $tempUsuario = new Usuario();
        $tempUsuario->id = null;
        $tempUsuario->usuario = $_POST["usuario"];
        $tempUsuario->senha = 100;
        $tempUsuario->confirmarrecebimento();
        $tempUsuario->pagarconta(300);
    }