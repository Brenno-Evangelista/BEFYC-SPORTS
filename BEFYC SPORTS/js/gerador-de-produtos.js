let jsonObject = {} 
let productContainer = document.getElementsByClassName('product-section')[0];

// gera json
requestJSON = () => { 
    let req = new XMLHttpRequest();
    req.open('GET', '', false); 
    req.send(null);
    if(req.status == 200) {
      jsonObject = JSON.parse(req.responseText);
    }
} 

// Gera o produto HTML
generateProductHTML = () => {
    productContainer.innerHTML += `

        <div id="Produto">
            <div id="image-div">
                <img id="produto-image" src="`+jsonObject.products[idValue].img+`">
            </div>
            <div id="informação-produto">
                <p id="produto-nome">`+jsonObject.products[idValue].name+`</p>
                <p id="produto-preço">R$`+jsonObject.products[idValue].price+`,00</p>
                <p class="label">Tamanho</p>
                <select name="size" id="selecionar-tamanho">

                </select>
                <p class="label">Quantidade</p>
                <input type="number" id="quantidade-produto" min=1 max=99 value=1>
                <a id="produto-button" href="#">Comprar</a>
            </div>
        </div>

    `

} 

// Gera opcoes de tamanho
generateSizeOptions = () => {
    for(let x = 0; x < size.length; x++) {
        let opt = document.createElement('option');    
        opt.value = size[x];
        opt.innerHTML = size[x];
        selectOptions.appendChild(opt);
    }
}

requestJSON();

// pegar parametro URL
let query = location.search; // pega querystring da pagina 
let keyValue = query.split('='); //divide em um array 
let idValue = keyValue[1]; // pega valor do id em string



generateProductHTML();




let selectOptions = document.getElementById('product-size-select'); // seleciona o select
let size = jsonObject.products[idValue].size;


generateSizeOptions();





