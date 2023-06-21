
function ver(){
    //let query = location.search; // pega querystring da pagina 
    //let keyValue = query.split('='); //divide em um array 
    //let idValue = keyValue[1]; // pega valor do id em string

    let urlParams = new URLSearchParams(window.location.search);
    let idValue = urlParams.get("id") // livros
    let nome = urlParams.get("nome") // Augusto
    let preco = urlParams.get("preco") // Augusto

    var campo1 = document.getElementById("info-name")
    var campo2 = document.getElementById("info-preço")
    var campo3 = document.getElementById("info-tamanho")    
    campo1.innerHTML = "Produto: "+nome;
    campo2.innerHTML = "Preço: R$"+preco+",99";
    campo3.innerHTML = "G";
}
