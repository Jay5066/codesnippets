
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

//Js function type 3 (Anonymous closures.)
(function(a,b){
  console.log("Works!");
  var sum = (a+b);
  return sum; 
})(10,50);

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

//Expanding functionality through prototype
var speak = function(saywhat){
    console.log(saywhat);
}

var Cat = function(){
    var name, breed;    
}

Cat.prototype.speak = speak;
var firstCat = new Cat(); 

firstCat.name = "I'm cat";
firstCat.breed = "Breed201";
firstCat.speak = "Meow";

console.log(firstCat.speak);

//Indirect invocation
var speak = function(what){
    console.log(this.love);
    console.log(this.normal);
}

var saySomething = {normal:"meow",love:"purr"}
speak.call(saySomething);

//second method (Call)
var speak = function(what){
    console.log(what);
    console.log(this.love);
}

var saySomething = {normal:"meow",love:"purr"}
speak.call(saySomething,saySomething.normal);

//third method (Apply)
var speak = function(what){
    console.log(what);
    console.log(this.love);
}

var saySomething = {normal:"meow",love:"purr"}
speak.apply(saySomething,['test']);

//Using the arguments parameter
var plus = function(){
    var sum = 0; 
    for (var i = arguments.length - 1; i >= 0; i--) {
          sum += arguments[i];
    }
    return sum;
}
console.log(plus(2,2,10));


//Creating Js modules for re-use
//Passing arguments and setting module defaults
var sum =(function(){

    var DEFAULTS = {
        say:"Yepp!"
    }
        return {
          value:function(){
            var myArgs = arguments[0] || '';
            var statement = myArgs.say || DEFAULTS;
            console.log(statement); 
          }
        };
})();

sum.value({say:"Hellow"});


//Function chaning within custom js module 

var jay =(function(){

    var DEFAULTS = {
        speaks:"Yepp",
        speed:"slow"
    }
   
    return {
       say:function(){
            var myArgs = arguments[0] || '';
            var statement = myArgs.speaks || DEFAULTS;
            console.log(statement);
            return this;
          },
      
        runs:function(){
          var myArgs = arguments[0]||'';
          var statement = myArgs.speed || DEFAULTS;
            console.log(statement);
            return this;
        }

   }

    
})();

// jay.say({speaks:"Hey"});
// jay.runs({speed:"fast"});

jay.say({speaks:"Hello"}).runs({speed:"fast"});





