function GetName (options,greeting){
  return function(fname,lname){
    switch(options){
      case 'full' :
        console.log(greeting + ' ' + fname + ' ' + lname);
        break;
      case 'first' : 
        console.log(greeting + ' ' +  fname);
        break;
      case 'last':
        console.log(greeting + ' ' +  lname);
        break;
    }    
  };
}


console.log(GetName('first','Hi')('Jay','Chand'));

//Functional Programming.

function arrayMap(arr,fn){
  newArray = [];
  for(i = 0; i < arr.length; i++){
    newArray.push(
      fn(arr[i])
    );
  }
  return newArray;
}


// given an array of things. Provide a function that takes an array
// does something with it and returns new vlaue out. 

var checkPastLimit = function(limiter){
  return function(limiter,item){
      return item > limiter;
  }.bind(this,limiter);
};

var n  = arrayMap([1,2,4],checkPastLimit(1));

console.log(n);

