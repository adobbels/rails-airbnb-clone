//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

const input = document.querySelector('#flat_feature_ids_1');
let inputText = input.parentNode.innerText
console.log(input.parentNode.innerHTML);
input.parentNode.insertAdjacentHTML('beforeEnd', "<i class='fa fa-bed' aria-hidden='true'>");
