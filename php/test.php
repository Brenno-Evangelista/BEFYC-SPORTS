<?php





if(isset($_POST['submit']) && !empty($_POST['email']) && !empty($_POST['senha']))
{

//acessa
include_once('config.php');
$email = $_POST['email'];
$senha = $_POST['senha'];



$sql = "SELECT * FROM tbl_cliente WHERE email = '$email' and senha_cliente = '$senha'";

$result = $conexao->query($sql);

if(mysqli_num_rows($result) < 1){

    header('Location: login.php');

}
else{
    header('Location: ../index.html');
}
}

else{

    //não acessa
    header('Location: login.php');
}


?>
