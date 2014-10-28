
//Js function type 1
function _new(a,b){
	// Regular way
	var sub = a - b;
	console.log(sub);
}
	//Call function after creation;
	_new(10,200);

//Js function type 2 
var doit = function _func(a,b) {
	// Regular way
	var sum = a + b;
	console.log(sum);
}(10,20);


//Js object with method and properties. 
var obj = {
  one : "Information",
  two : " for life",
  retval : function (a,b) {
        return(
          console.log(this),
          console.log(a+b),
          console.log(this.one),
          console.log(this.one + this.two )
        )
        
    },
  array : {
      one:"one",
      two:"two"
  }

}
  
  obj.retval(10,4);

//Invoking instances through the constructor 
var Dog = function(){
    var name, breed;    
}

var firstDog = new Dog(); 
firstDog.name = "Jay";
firstDog.breed = "Nepali";

console.log(firstDog.name + ' ' + firstDog.breed);
console.dir(firstDog);