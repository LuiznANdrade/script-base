$(document).ready(function () {
  window.addEventListener("message", function (event) {
    $("body").css("display", "none");
    if (event.data.teste != undefined) {
      let status = event.data.teste;
      if (status) {
        console.log("Luizn | Visível");
        $("body").css("display", "flex");
      } else {
        console.log("Luizn | Oculto");
        $("body").css("display", "none");
      }
    }

    var botaoClose = document.getElementById('close');
    botaoClose.addEventListener('click', function(){
      $.post('https://script-base/close')
    })

    }
  )
});
