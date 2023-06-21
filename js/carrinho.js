const myinput = document.getElementById("qnt");
function stepper(btn){

   let id = btn.getAttribute("id");
   let min = myinput.getAttribute("min");
   let max = myinput.getAttribute("max");
   let step = myinput.getAttribute("step");
   let val = myinput.getAttribute("value");
   let calcStep = (id == "tirar") ? (step*1) : (step * -1);
   let newvalue = parseInt(val) + calcStep;
   
   


   if(newvalue >= min && newvalue <= max){
    myinput.setAttribute("value", newvalue);

        let urlParams = new URLSearchParams(window.location.search);
   let preco = urlParams.get("preco") 
   var valorQuant = document.getElementById('qnt').value;
    var totalF = valorQuant * preco;
    var Preçototal = document.getElementById("valor-total");
    Preçototal.innerHTML = "R$"+totalF+",00";
    var subtotal = document.getElementById("sub-total")
    var total = document.getElementById("total")


    subtotal.innerHTML = totalF+",00";
    total.innerHTML = totalF+",00";
   }

}

function ver(){

    let urlParams = new URLSearchParams(window.location.search);
    let idValue = urlParams.get("id") 
    let nome = urlParams.get("nome") 
    let preco = urlParams.get("preco") 
    let img = urlParams.get("imagem")

    var Nome = document.getElementById("info-name")
    var Preço = document.getElementById("info-preço")  
    var imagem = document.getElementById("info-img") 
    var Preçototal = document.getElementById("valor-total");
    var valorQuant = document.getElementById('qnt').value;
    var subtotal = document.getElementById("sub-total");
    var total = document.getElementById("total");

   


    


    if(valorQuant == 1){
       Preçototal.innerHTML = "R$"+preco+",00"; 
       subtotal.innerHTML = preco+",00";
       total.innerHTML = preco+",00";

    }
    else{
        stepper();
    }
    

     Nome.innerHTML = nome;
     Preço.innerHTML = "R$"+preco+",00";
     imagem.src = img;
   

     
}


function remove(){

    var tirar = document.getElementById("teste")
    tirar.style.display='none'
   

}

