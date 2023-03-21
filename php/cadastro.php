<?php

if(isset($_POST['submit']))
{
    include_once('config.php');

    $nome = $_POST['nome'];
    $nascimento = $_POST['datanasc'];
    $endereço = $_POST['endereço'];
    $numero = $_POST['numero'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    
    $result = mysqli_query($conexao, "INSERT INTO tbl_cliente(email,nome_cliente,senha_cliente,telefone,endereço,datadenascimento) 
    VALUES ('$email','$nome','$senha','$numero','$endereço','$nascimento')");
    
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/cadastro.css">
    <title>Cadastro</title>
</head>
<body>
    <section class="area-login">
        <div class="login">
            <div>
                <img src="../imagens/Logo/Logo-BEFYC-semfundo.png">
           
            <form class="form" action="cadastro.php" method="POST">
                <input type="text" placeholder="nome" name="nome" id="nome" required>
                <input type="date" placeholder="data de nascimento" name="datanasc" id="datanasc" required>
                <input type="text" placeholder="endereço" name="endereço" id="endereço" required>
                <input type="text" placeholder="numero" name="numero" id="numero" required> 
                <input type="email" placeholder="email" name="email" id="email" required>
                <input type="password" placeholder="senha" name="senha" id="senha" required>
                <button class="btn" type="submit" name="submit">Cadastrar</button>
            </form>
            </div>
        
       <P>Ja tem cadastro?<a href="login.php">Login</a></P>
    </section>
</body>
</html>