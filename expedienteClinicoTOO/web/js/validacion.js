$(function)(){

$("#btn").on("click", function(){
  $("#formulario").validate({
  rules:{
    name: {required: true, minlenght: 5, maxlenght, 10}
  },
  messages:{
    name: {required: 'El campo es requeridio', minlenght : 'Mímimo 5 caracteres'}
  }
  });
 });
});
