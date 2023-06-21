let jsonObject = {} 
let productContainer = document.getElementsByClassName('sessão-produtos')[0];

// gera json
requestJSON = () => { 
    let req = new XMLHttpRequest();
    req.open('GET', 'https://raw.githubusercontent.com/Brenno-Evangelista/BEFYC-SPORTS/main/js/products.json', false); 
    req.send(null);
    if(req.status == 200) {
      jsonObject = JSON.parse(req.responseText);
    }
} 

// Gera o produto HTML
generateProductHTML = () => {
    productContainer.innerHTML += 
    `
    
        <div id="produto">
            <p id="produto-nome">`+jsonObject.products[idValue].name+`</p>
            <div id="produto2">
                <div id="image-div">

                <div id="carouselExample" class="carousel slide w-75">
                    <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="`+jsonObject.products[idValue].img+`" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="`+jsonObject.products[idValue].img1+`" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="`+jsonObject.products[idValue].img2+`" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="`+jsonObject.products[idValue].img3+`" class="d-block w-100" alt="...">
                    </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                    </button>
                    <button  class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class= "visually-hidden">Next</span>
                    </button>
                </div>
                </div>
                
                <div id="Descrição-div">
                <p id="Descrição">`+jsonObject.products[idValue].descrição+`</p>
                </div>
            </div>
            <div>
                <div>
                    <button id="btn-collapse" class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                     Selecionar
                    </button>
                </div>
                <div class="collapse" id="collapseExample">
                    <div class="card card-body" id="card-body">
                        <div id="informação-produto">
                            <p class="label">Tamanho</p>
                            <select name="tamanho" id="selecionar-tamanho" value="G">

                            </select>
                            <p class="label"></p>
                        <a id="produto-button" href="../html/carinho.html?id=${idValue}&nome=${jsonObject.products[idValue].name}&preco=${jsonObject.products[idValue].price}&imagem=${jsonObject.products[idValue].img}">Adicionar</a>
                        <a id="produto-button" href="../html/cupomcompra.html?id=${idValue}&nome=${jsonObject.products[idValue].name}&preco=${jsonObject.products[idValue].price}">Comprar</a>
                        </div>
                    </div>
                </div>
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




let selectOptions = document.getElementById('selecionar-tamanho'); // seleciona o select
let size = jsonObject.products[idValue].size;


generateSizeOptions();





