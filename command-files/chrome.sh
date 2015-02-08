/*
	Inspect elemet within the document 
 */
 
 $('#elem');-> finds one #elem 
 $$('#elem');-> finds more then one occuerence of the same #elem

/*
	Change anything wihtin the document 
 */

document.body.contentEditable = true;

/*
	Console.log dom
 */

console.log("Document", document);

/*
	Events 
 */

$("#elem") -> Find #elem

getEventListeners($("#elem"));

monitorEvents($('#elem')),'click');

monitorEvents($('#elem')),['click','blur',etc...]);

unmonitorEvents($('#elem'));

/*
	Measure Exe time 
 */

console.time('myTime');
console.timeEnd('myTime');

console.time('myLoop');

for (( i = 0; i < 10; i++ )); do
	#statements
done

console.timeEnd('myLoop');

/*
	Working with js object 

 */

var myAarray = [{"name":"jay","last_name":"chand","work":"k12",},{"name":"sam","last_name":"chand","work":"btg",}];
myAarray
console.table(myAarray);
