<html>

<head>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <title> IronInside Juiz de Fora</title>
</head>

<body>
    <header class="menu-principal">
        <main>
            <div class="header-1" align="center" <h1> <b> IronInside Juiz de Fora</b> </h1>
                <img src="./img/logo.png" alt="logo" height="42" width="62" />

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
    <main>
        <div class="header-1">
            <ul align="left">
                <li><a href="index.html">HOME</a> </li>
                <li><a href="aparelhos.html">APARELHOS</a> </li>
                <li><a href="alunos.html">ALUNOS</a> </li>
                <li><a href="agenda.html">AGENDA</a> </li>
            </ul>
        </div>
        <div position="relative" class="main" align="center">
            <form action="#" method="post">
                <fieldset>
                    <legend align="center">Preencha Dados dos Alunos:</legend>
                    <label for="Funcionario" align="left">Nome:</label>
                    <input type="text" name="email" id="email" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />
                    <label for="Aparelho" align="left">Telefone:</label>
                    <input type="tel" name="telefone" id="telefone" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />
                    <label for="rua" align="left">Rua:</label>
                    <input type="text" name="rua" id="rua" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="bairro" align="left">Bairro:</label>
                    <input type="text" name="bairro" id="bairro" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="Sala" align="left">CPF:</label>
                    <input type="number" name="cpf" id="cpf" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="Sala" align="left">Estacionamento use apenas 1 ou 2:</label>
                    <input type="number" name="Estacionamento" id="Estacionamento" class="number"
                        onfocus="textOn(this.id)" onblur="textNormal(this.id)" />

                    <label for="Peso" align="left">Peso:</label>
                    <input type="number" name="peso" id="peso" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="Altura" align="left">Altura:</label>
                    <input type="number" name="altura" id="altura" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="Ficha" align="left">Ficha:</label>
                    <input type="text" name="ficha" id="ficha" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />

                    <label for="personal" align="left">Matricula Personal:</label>
                    <input type="text" name="personal" id="personal" class="text" onfocus="textOn(this.id)"
                        onblur="textNormal(this.id)" />


                    <br> </br>
                    <input type="submit" align="left" name="enviar" id="enviar" class="button">
                    <input align="center" type="reset" name="redefinir" id="redefinir" class="button">
                    <button align="right" name="consultar" id="consultar"> Consultar</button>


                </fieldset>
            </form>
        </div>
        <div>

    </main>


</body>

</html>