function initSliders(){
  document.querySelectorAll('.slider').forEach(function(object){
    var container = object.querySelector('.container-slider');
    var settings = {
      primeiraImg: function(){
        elemento = container.querySelector("a:first-child");
        elemento.classList.add("ativo");
        this.legenda(elemento);
      },
      slide: function(){
        elemento = object.querySelector(".ativo");
        if(elemento.nextElementSibling){
          elemento.nextElementSibling.classList.add("ativo");
          settings.legenda(elemento.nextElementSibling);
          elemento.classList.remove("ativo");
        }else{
          elemento.classList.remove("ativo");
          settings.primeiraImg();
        }
      },
      proximo: function(){
        clearInterval(intervalo);
        elemento = object.querySelector(".ativo");
        
        if(elemento.nextElementSibling){
          elemento.nextElementSibling.classList.add("ativo");
          settings.legenda(elemento.nextElementSibling);
          elemento.classList.remove("ativo");
        }else{
          elemento.classList.remove("ativo");
          settings.primeiraImg();
        }
        intervalo = setInterval(settings.slide,4000);
      },
      anterior: function(){
        clearInterval(intervalo);
        elemento = object.querySelector(".ativo");
        
        if(elemento.previousElementSibling){
          elemento.previousElementSibling.classList.add("ativo");
          settings.legenda(elemento.previousElementSibling);
          elemento.classList.remove("ativo");
        }else{
          elemento.classList.remove("ativo");						
          elemento = object.querySelector("a:last-child");
          elemento.classList.add("ativo");
          container.legenda(elemento);
        }
        intervalo = setInterval(settings.slide,4000);
      },
      legenda: function(obj){
        var legenda = obj.querySelector("img").getAttribute("alt");
        object.querySelector("figcaption").innerHTML = legenda;
      }
    }
    settings.primeiraImg();
    settings.legenda(elemento);
    var intervalo = setInterval(settings.slide,4000);
    object.querySelector(".next").addEventListener("click",settings.proximo,false);
    object.querySelector(".prev").addEventListener("click",settings.anterior,false);
    });
  
}
window.addEventListener("load",initSliders,false);

function toogleItens(element) {
  var x = element.querySelector(".item-description");
  if (x.style.display == "block") {
      x.style.display = "none";
      element.classList.remove("active");
  } else {
      x.style.display = "block";
      element.classList.add("active");
  }
}