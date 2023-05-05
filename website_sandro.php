<?php
$ip_porto="localhost:3307";
$utilizador="root";
$senha="";
$bd="website";

$conexao=new mysqli($ip_porto, $utilizador, $senha, $bd) or die ("conexao falhou");

// inserir utilizadores
$pedido="insert into utilizadores (nome, senha) value ('Sandro', md5('casa'))";
mysqli_query($conexao, $pedido);

$pedido="insert into utilizadores (nome, senha) value ('Joana', md5('mesa'))";
mysqli_query($conexao, $pedido);

$pedido="insert into utilizadores (nome, senha) value ('Kiko', md5('morangos'))";
mysqli_query($conexao, $pedido);


// inserir comentarios
$pedido="insert into comentarios (texto, id_utilizador) value ('Isto é um comentário', '2')";
mysqli_query($conexao, $pedido);

$pedido="insert into comentarios (texto, id_utilizador) value ('Mais um comentario da Joana', '2')";
mysqli_query($conexao, $pedido);

$pedido="insert into comentarios (texto, id_utilizador) value ('Comentado pelo Sandro', '1')";
mysqli_query($conexao, $pedido);

$pedido="insert into comentarios (texto, id_utilizador) value ('Quero mais cenouras', '3')";
mysqli_query($conexao, $pedido);

$pedido="insert into comentarios (texto, id_utilizador) value ('Coelho da Páscoa', '3')";
mysqli_query($conexao, $pedido);

// mysqli() = faz conexao base dados
// mysqli query = faz pedido à base dados






?>
