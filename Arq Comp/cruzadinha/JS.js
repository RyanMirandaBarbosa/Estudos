 // Seleciona todos os botões na página
 var buttons = document.querySelectorAll('button');

 // Função para reproduzir o som
 function playClickSound() {
     var audio = document.getElementById('clickSound');
     audio.play();
     // Adicione qualquer lógica ou ação adicional aqui
 }

 // Atribui a função a cada botão
 buttons.forEach(function(button) {
     button.addEventListener('click', playClickSound);
 });