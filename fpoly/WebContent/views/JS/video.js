var app=angular.module("myapp",[]);
app.controller("controller",function($scope) {
   
})

function img(params){
	 var anh = document.getElementById("anh");
	 var h = document.getElementById("img");
    h.src=anh;
    alert("hu");
   
}