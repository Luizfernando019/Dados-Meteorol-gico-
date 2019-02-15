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
                            <td><a href="#"><img class="icone" src="imagens/novo.png"> Novo</a></td>
                            <td><a href="#" onclick="abrir(1)"><img class="icone" src="imagens/hora.png"> Abrir</a></td>
                        </tr>
                        <tr>
                            <td><a href="FrontController?action=LerDadoMet"><img class="icone" src="imagens/hora.png"> Exibir Dados</a></td>
                        </tr>
                    </table>
                    <p><img class="icone" src="imagens/filtro.png"> <b>Dados</b></p>
                    <table class="tbFiltro">
                        <tr>
                            <td class="abreSubmenu"><a href="#">Adicionar</a>
                                <div class="submenu">
                                    <table>
                                        <tr>
                                            <td onclick="abrir(2)"><a href="#">Estação</a></td>
                                        </tr>
                                        <tr>
                                            <td  onclick="abrir(3)"><a href="#">Dados Metereologico</a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Momento</a></td>
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
                    <c:forEach items="${estacoes}" var="estacao">
                        <c:forEach items="${momentos}" var="momento">
                        <tr class="tbDados">
                            <td><c:out value="${momento.data}" /></td>
                            <td><c:out value="${momento.hora}" /></td>
                            <td>30.5</td>
                            <td>4.2</td>
                            <td class="acao1"><img class="icone" src="imagens/editar.png"></td>
                            <td class="acao2"><img class="icone" src="imagens/excluir.png"></td>
                        </tr>
                        </c:forEach>
                    </c:forEach>

                </table>
            </div>
            <div id="cont-arq">
                <div id="abrirArq">
                    <form action="FrontController?action=LerArquivo" method="post" enctype="multipart/form-data">
                        <table id="uploadTxt">
                            <tr>
                                <td><input type="file"  id="fileToUpload" name="arq"></td>
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
            <div id="addDadoMet">
                <div id="addEstacao">
                    <form action="FrontController?action=LerDadoMet" method="post">
                        <table id="tbdados">
                            <tr>
                                <th colspan="2">Adicionar Dados Metereologico</th>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td><input  type="text" name="txtId"></td>
                            </tr>
                            <tr>
                                <td>anemometro</td>
                                <td><input  type="text" name="txtAne"></td>
                            </tr>
                            <tr>
                                <td>temperatura</td>
                                <td><input  type="text" name="txtTemp"></td>
                            </tr>
                            <tr>
                                <td>Local da  estação</td>
                                <td> <select class="nomeSelect" name="txtLocalEst">
                                        <option>Selecione</option>
                                        <c:forEach items="${estacoes}" var="estacao">   
                                            <option value="${estacao.idLocalEstacao}"><c:out value="${estacao.nome}" /></option> 
                                        </c:forEach>
                                    </select></td>
                            </tr>
                            <tr>
                                <td>Momento</td>
                                <td><select class="nomeSelect" name="txtMom">
                                        <option>Selecione</option>
                                        <c:forEach items="${momentos}" var="momento">   
                                            <option value="${momento.idMomento}"><c:out value="Data: ${momento.data}, Hora: ${momento.hora}" /></option> 
                                        </c:forEach>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><input id="arquivo" type="submit" value="Adicionar">
                                    <input id="fecharArq" type="button" value="Cancelar" onclick="fechar(3)">
                                </td>
                            </tr>
                        </table>   
                    </form>
                </div>    
            </div>
        </div>
    </body>
</html>

