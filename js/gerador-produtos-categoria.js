let jsonObject = {} 
let productsContainer = document.getElementById('produtos');

requestJSON = () => {
    let req = new XMLHttpRequest();
    req.open('GET','https://raw.githubusercontent.com/Brenno-Evangelista/BEFYC-SPORTS/main/js/products.json', false); 
    req.send(null);
    if(req.status == 200) {
      jsonObject = JSON.parse(req.responseText);
    }
}

// pegar parametro URL
let query = location.search; // pega querystring da pagina 
let keyValue = query.split('='); //divide em um array
let catValue = keyValue[1]; // pega valor do id em string (Categorias)

// Gera HTML do produto 
generateHTML = (json, x) => {
    productsContainer.innerHTML += `
         
    

    <div id="produto-unico">
        <img src="`+json[x].img+`" class="img-produto">
        <span class="catalogo-line"></span>
        <p class="produto-titulo">`+json[x].name+`</p>
        <p class="produto-preço">R$`+json[x].price+`,99</p>
        <form method='get' action="produtos.html">
            <input type="hidden" value="`+json[x].id+`" name='id'/>
            <button class="produto-button" type="submit">Comprar</button>
        </form>
    </div>

`



    

}

// Percorre o JSON e gera
generateProducts = () => {
    requestJSON();
    for(let x = 0; x < jsonObject.products.length; x++) {
        if(jsonObject.products[x].type ==catValue) {
            generateHTML(jsonObject.products, x);
        }
    }

}

generateProducts();




/******************************************************************************** FILTRO ******************************************************************************/

let json = jsonObject.products; 

// Seleciona a funcao de acordo com a opcao selecionada

selectedFilter = () => {

    let selectedOption = document.getElementsByClassName('form-select')[0].value;

    if(selectedOption == 'preço-crescente') {
        filterByLowestPrice(json);
    } else if(selectedOption == 'preço-decrescente') {
        filterByBiggestPrice(json);
    } 

}


// Filtro preco minimo e maximo 

let filterCount = 0;

filterByPrice = () => {

    if(document.getElementById('min-value').value == "" || document.getElementById('max-value').value == "") { // verifica se esta vazio
        alert('Digite um valor');
    } else {

        let min = Number.parseInt(document.getElementById('min-value').value);
        let max = Number.parseInt(document.getElementById('max-value').value);
        let exists = false;

        if(min > max) {
            alert('Digite um valor mínimo menor do que o valor máximo');
        } else {

            filterCount++;
            if(filterCount % 2 == 0) { // caso a pessoa clique duas vezes no botao gera outro json para evitar de n ter produtos
                json = jsonObject.products;
                if (filterCount == 2) { // reseta para filtro para evitar bugs
                    filterCount = 1; 
                }
            }

            productsContainer.innerHTML = ``;

            json = json.filter(function(a) {
                return a.price >= min && a.price <= max;
            });


            for(let x = 0; x < json.length; x++) {

                if(json[x].type == catValue) {
        
                    generateHTML(json, x);;
                }
            } 

        }

    }
}



// Filtro menor valor 

filterByLowestPrice = (json) => {

    productsContainer.innerHTML = ``;

    json.sort(function(a,b) {   // filtra os valores em ordem crescente
        return a.price < b.price ? -1 : (a.price > b.price ? 1 : 0);
    });

    for(let x = 0; x < json.length; x++) {

        if(json[x].type == catValue) {

            generateHTML(json, x);;
        }
    } 

}



// Filtro maior valor 

filterByBiggestPrice = (json) => {

    productsContainer.innerHTML = ``;

    json.sort(function(a,b) {   // filtra os valores em ordem decrescente
        return a.price < b.price ? 1 : (a.price > b.price ? -1 : 0);
    });

    for(let x = 0; x < json.length; x++) {

        if(json[x].type == catValue) {
            generateHTML(json, x);;

        }
    }

}

// Reseta os filtros

resetFilter = () => {
    productsContainer.innerHTML = ``;
    json = jsonObject.products; 
    document.getElementById('min-value').value = "";
    document.getElementById('max-value').value = "";
    document.getElementsByClassName('form-select')[0].value = "default";
    generateProducts();
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
let selectOptions = document.getElementById('selecionar-tamanho'); // seleciona o select
let size = jsonObject.products[idValue].size;


generateSizeOptions();
