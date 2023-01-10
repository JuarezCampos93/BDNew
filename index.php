<?php
include("conexao.php");

?>


<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<head>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <title> IronInside Juiz de Fora</title>
</head>

<body>
    <header class="menu-principal">
        <main>
            <div class="header-1" align="center" <h1> <b> IronInside Juiz de Fora</b> </h1>
                <img src="./img/logo.png" alt="logo" height="42" width="62" a href="index.html" />

            </div>
            <div class="redes-sociais">

                <ul>
                    <li>
                        <a href="">
                            <img src="./img/rss.png" alt="rss" height="42" width="42" />
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/face.png" alt="face" height="42" width="42" />
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/tw.png" alt="face" height="42" width="42" />
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/lik.png" alt="face" height="42" width="42" />
                        </a>
                    </li>

                </ul>

            </div>
            </div>
        </main>
    </header>
    <br> </br>
    <div class="header-1">
        <ul>
            <li><a href="index.html">HOME</a> </li>
            <li><a href="aparelhos.html">APARELHOS</a> </li>
            <li><a href="alunos.html">ALUNOS</a> </li>
            <li><a href="agenda.html">AGENDA</a> </li>
        </ul>
        <div>
            <div position="relative" class="main" align="center">
                <form action="#" method="post">
                    <fieldset>
                        <legend align="center">Faça seu login para continuar</legend>
                        <label for="nome" align="left">Email:</label>
                        <input type="text" name="email" id="email" class="text" onfocus="textOn(this.id)"
                            onblur="textNormal(this.id)" />
                        <label for="email" align="left">Senha:</label>
                        <input type="password" name="senha" id="senha" onfocus="textOn(this.id)"
                            onblur="textNormal(this.id)" />
                        <br> </br>
                        <button align="right">Entrar</button>
                    </fieldset>
                </form>
            </div>


</body>

</html>