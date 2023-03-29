<?php

if(isset($_POST['submit']) && !empty($_POST['nome']) && !empty($_POST['email']) && !empty($_POST['senha']))
{
    include_once('config.php');
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    

    $sql = "SELECT * FROM tbl_cliente WHERE nome = '$nome' and email = '$email' and senha = '$senha'";

    $result = $conexao -> query($sql);

      if(mysqli_num_rows($result) < 1)
     {
       
        header('location: login.php');

     }
     else{
      header('location: sistema.php');

     }



}else{
    header('Location: login.php');
}



?>