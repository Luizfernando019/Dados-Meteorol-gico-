<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html >
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css"> 
        <script src="js/js.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="topo">
            <img id="logo" src="imagens/img01.png">
            <img class="nuvem" src="imagens/img03.png">   
            <img class="nuvem" src="imagens/img02.png">
            <h1 id="titulo">Dados Metereologicos</h1>
        </div>
        <div id="conteudo">
            <div id="menulat">
                <div id="arq">
                    <p><img class="icone" src="imagens/filtro.png"> <b>Arquivo</b></p>
                    <table class="tbFiltro">
                        <tr>
                            <td><img class="icone" src="imagens/calendario.png"> Novo</td>
                            <td><a href="#" onclick="abrir(1)"><img class="icone" src="imagens/hora.png"> Abrir</a></td>
                        </tr>
                        <tr>
                            <td><a href="FrontController?action=LerLocalEstacao"><img class="icone" src="imagens/hora.png"> Exibir Dados</a></td>
                        </tr>
                    </table>
                    <p><img class="icone" src="imagens/filtro.png"> <b>Dados</b></p>
                    <table class="tbFiltro">
                        <tr>
                            <td class="abreSubmenu"><img class="icone" src="imagens/calendario.png">Adicionar
                                <div class="submenu">
                                    <table>
                                        <tr>
                                            <td onclick="abrir(2)">Estação</td>
                                        </tr>
                                        <tr>
                                            <td>Dados Metereologico</td>
                                        </tr>
                                        <tr>
                                            <td>Momento</td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>

                </div>
                <div id="filtro">
                    <table class="tbFiltro">
                        <p><img class="icone" src="imagens/filtro.png"> <b>Filtrar por:</b></p>
                        <tr>
                            <td><img class="icone" src="imagens/calendario.png"> Data</td>
                            <td><img class="icone" src="imagens/hora.png"> Hora</td>
                        </tr>
                        <tr>
                            <td><img class="icone" src="imagens/temperatura.png"> Temperatura</td>
                            <td><img class="icone" src="imagens/anemometro.png"> Anemometro</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="cont">
                <form action="FrontController?action=LerLocalEstacao" method="post">
                    <table id="tbBusc">
                        <tr>
                            <td><input type="text"></td>
                            <td>
                                <select>
                                    <option>Data</option>
                                    <option>Hora</option>
                                    <option>Temperatura</option>
                                    <option>Anemometro</option>
                                </select>
                            </td>
                            <td><input type="submit" value="Buscar"></td>
                        </tr>
                    </table>
                </form>
                <table id="tbCont">
                    <tr id="tbTituloD">
                        <td>Data</td>
                        <td>Hora</td>
                        <td>Temperatura</td>
                        <td>Anemometro</td>
                        <td colspan="2">Ação</td>
                    </tr>
                    <c:forEach items="${arquivos}" var="arquivo">
                        <tr class="tbDados">
                            <td><c:out value="${arquivo.nome}" /></td>
                            <td>teste</td>
                            <td>teste</td>
                            <td>teste</td>
                            <td class="acao1"><img class="icone" src="imagens/adicionar.png"></td>
                            <td class="acao2"><img class="icone" src="imagens/excluir.png"></td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div id="cont-arq">
                <div id="abrirArq">
                    <form action="FrontController?action=LerItemAction" method="post">
                        <table id="uploadTxt">
                            <tr>
                                <td><input type="file" name="fileToUpload" id="fileToUpload" name="arq"></td>
                            </tr>
                            <tr>
                                <td><input id="arquivo" type="submit" value="Abrir">
                                    <input id="fecharArq" type="button" value="Cancelar" onclick="fechar(1)">
                                </td>
                            </tr>
                        </table>   
                    </form>
                </div>    
            </div>
            <div id="addDados">
                <div id="addEstacao">
                    <form action="FrontController?action=GravarLocalEstacao" method="post">
                        <table id="tbdados">
                            <tr>
                                <th colspan="2">Adicionar Estação</th>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td><input  type="text" name="txtId"></td>
                            </tr>
                            <tr>
                                <td>nome</td>
                                <td><input  type="text" name="txtNome"></td>
                            </tr>
                            <tr>
                                <td>Altura</td>
                                <td><input  type="text" name="txtAltu"></td>
                            </tr>
                            <tr>
                                <td>Descrição</td>
                                <td><input  type="text" name="txtDesc"></td>
                            </tr>
                            <tr>
                                <td>Latitude</td>
                                <td><input  type="text" name="txtLati"></td>
                            </tr>
                            <tr>
                                <td>Longitude</td>
                                <td><input  type="text" name="txtLong"></td>
                            </tr>
                            <tr>
                                <td><input id="arquivo" type="submit" value="Adicionar">
                                    <input id="fecharArq" type="button" value="Cancelar" onclick="fechar(2)">
                                </td>
                            </tr>
                        </table>   
                    </form>
                </div>    
            </div>
        </div>
    </body>
</html>

