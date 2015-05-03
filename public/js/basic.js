//Part 1: Variables and Naming

var foo = 100;
console.log('foo=' + foo);

var bar = "200"; 
console.log('bar=' + bar);

var fooBar = foo + bar; 
console.log('foo+bar=' + fooBar);

var barFoo = bar + foo;
console.log('bar+foo=' + barFoo);

var fooHundo = foo * 2;
console.log('foo * 2=' + fooHundo);

var barHundo = bar * 2;
console.log('bar * 2=' + barHundo);

//Part 2: Equality
var one = 1;
var stringOne = "1";

console.log("one == one " + (one == one) )
console.log("one == stringOne " + (one == stringOne) )
console.log("1 === stringOne " + (1 === stringOne) )

if(true)
  console.log("true is true")  

if('true')
  console.log("'true' is true");

if(7)
  console.log("int > 0 is true");

if([])
  console.log('[] array is true');

if(!([].length))
  console.log('[].length == 0 is false');

//Part 3: Collections 

var arr = [];
arr.push("1");
arr.push(2);
arr.push("socks");
arr.push("pops");

console.log("arr=" +arr );
console.log("arr[1]=" + arr[1]);

console.log("arr.pop()=" + arr.pop());
console.log("arr=" + arr);

//Part 4: Iteration
console.log("for loop");

for(var i=0; i < arr.length; i++){
  console.log("arr["+i+"]= " + arr[i]);
}

console.log('forEach method');
arr.forEach( function(curItem,curIndex){
  console.log("arr["+curIndex+"]=" +curItem);
});


//Part 4: Methods

function funcFoo(){
  console.log("You've Envoked funcFoo");
}

console.log("Envoke a method with ()");
console.log("funcFoo()=");
console.log( funcFoo() );

var funcBar = function(someParam){
  console.log("You've Envoked funcBar");
  console.log("/w the param=");
  console.log( someParam );
};

console.log( "funcBar(1)=" );
console.log(funcBar(1) );

console.log( "funcBar([1,2,3])=" );
console.log(funcBar([1,2,3]) );

console.log( "funcBar( funcFoo  )=" );
console.log(funcBar( funcFoo ) );






