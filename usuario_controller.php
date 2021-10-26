<?php

    require "../pnews/conexao.php";
    require "../pnews/usuario_model.php";
    require "../pnews/usuario_service.php";

    session_start();

    // ---------------- Validar Login ----------------
    if(isset($_POST['login'])) {

        if(!empty($_POST['email']) && !empty($_POST['senha'])) {

            $usuario = new Usuario();
            $usuario->__set('email', $_POST['email']);
            $usuario->__set('senha', $_POST['senha']);

            $conexao = new Conexao();

            $usuarioService = new UsuarioService($conexao, $usuario);
            $existeUsuario = $usuarioService->validarLogin();

            echo "<pre>";
            print_r($existeUsuario);
            echo "<pre>";

            if($existeUsuario['id'] != '' && $existeUsuario['nome'] != '') {
                $_SESSION['autenticado'] = "SIM";
                $_SESSION['id'] = $existeUsuario['id'];
                header('location: home.php');
            } else {
                $_SESSION['autenticado'] = "NAO";
                header('location: login.php');
            } 

        } else {
            //Inserir mensagem de usuário não existe por GET ?acao
            header('Location: login.php');
        }

    } else if(isset($_POST['submit'])) {

        // ---------------- Inserir dados do cadastro ----------------
        $usuario = new Usuario();
        $usuario->__set('nome', $_POST['nome']);
        $usuario->__set('cpf', $_POST['cpf']);
        $usuario->__set('dt_nascimento', $_POST['dt_nascimento']);
        $usuario->__set('telefone', $_POST['telefone']);
        $usuario->__set('email', $_POST['email']);
        $usuario->__set('senha', $_POST['senha']);
        $usuario->__set('rua', $_POST['rua']);
        $usuario->__set('numero', $_POST['numero']);
        $usuario->__set('bairro', $_POST['bairro']);
        $usuario->__set('cidade', $_POST['cidade']);
        $usuario->__set('estado', $_POST['estado']);
        $usuario->__set('modelo_moto', $_POST['modelo_moto']);
        $usuario->__set('pneu_utilizado', $_POST['pneu_utilizado']);
        $usuario->__set('modelo_pneu', $_POST['modelo_pneu']);
        $usuario->__set('tp_medio_troca', $_POST['tp_medio_troca']);

		$conexao = new Conexao();

        $UsuarioService = new UsuarioService($conexao, $usuario);
		$UsuarioService->inserir();

        //header('location: login.php?inclusao=1'); Implementar código para inserir mensagem de sucesso na hora do cadastro.
        header('location: home.php');

    } else if(isset($_GET['perfil'])) {	    

		$usuario = new Usuario();
        $usuario->__set('id', $_SESSION['id']);

		$conexao = new Conexao();

        $usuarioService = new UsuarioService($conexao, $usuario);
        $recuperar = $usuarioService->recuperar();

        header('location: perfil.php');

        /*
        foreach ($recuperar as $indice => $user) {

            echo '<pre>';
                print_r($user);
            echo '</pre>';
                    
            print_r($user->nome);
        }
        */
        
    }
    
?>