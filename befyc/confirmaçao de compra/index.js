if ($('#bodyConfirm').length) {

    var iterations = 0
   
    var actions = setInterval(carregaStatus, 1000)
   
   $('#email').text(_clientePedido.email)
   
   var infoOrder = $('#bodyConfirm .container .style-text');
   
   $('#confirma-info').replaceWith(infoOrder);
   
   }
   
   function carregaStatus() {
   
    iterations++;
   
    console.log(iterations);
   
    if (iterations >= 20) {
   
    clearInterval(actions)
   
    } else {
   
    $.get('/pedido?i=' + _idPedido, function (data) {
   
    var aprovado = data.indexOf('data-id="13"');
   
   console.log(aprovado)
   
    var cancelado = data.indexOf('data-id="7"');
   
   console.log(cancelado)
   
     if (aprovado > 0) {
   
   
   
     $('#status-pedido').replaceWith('<p id="status-pedido" style="background: #4cae4c; color: #fff"><i class="fa fa-check-circle"></i><b>   Pagamento Aprovado</b></p>');
   
     }
   
   
   
     if (cancelado > 0) {
   
   
   
     $('#status-pedido-c').replaceWith('<div class="w-70" style="padding-left: 1em; padding-right: 1em; margin-left: auto; margin-right: auto" id="status-pedido-c"> '+
   
   '<p style="font-size: 3.25rem; color: rgba(0,0,0,.7)">Pedido Cancelado</p> '+
   
   '<div style="border-radius: .5rem; background: #fcd1cd; padding: 2rem; border: 1px solid #c23426;">'+
   
   '<span style="font-size: 2rem; color: #c23426; font-weight: 600">Seu pedido foi realizado, porem cancelado pela empresa de cartão de crédito</span>'+
   
   '<p><span style="color: #c23426; font-size: 2rem">Em breve você receberá um e-mail no endereço </span><strong id=email></strong>'+
   
   '<span> com todos os detalhes do pedido.</span></p></div>'+
   
   '</div>');
   
     }
   
    });
   
    }
   
   }