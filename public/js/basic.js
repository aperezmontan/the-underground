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

console.log("arr=" +arr );
console.log("arr[1]=" + arr[1]);

console.log("arr.pop()=" + arr.pop());
console.log("arr=" + arr);
