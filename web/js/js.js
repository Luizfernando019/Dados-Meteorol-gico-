function abrir(n) {
    if (n == 1) {
        document.getElementById("cont-arq").style.display = "block";
    }else if(n == 2){
        document.getElementById("addDados").style.display = "block";
    }else if(n == 3){
        document.getElementById("addDadoMet").style.display = "block";
    }
}
function fechar(n) {
    if (n == 1) {
        document.getElementById("cont-arq").style.display = "none";
    } else if (n == 2) {
        document.getElementById("addDados").style.display = "none";
    } else if (n == 3) {
        document.getElementById("addDadoMet").style.display = "none";
    }
}
