// Reverse a string
//steps;
//measure string length
//create a loop that counts backwards
//set index value to length of string
//print values


var reversedString = "";
var index = 0

function reverse(word) {
  for (var i = word.length - 1; i >= index; i--) {
     console.log(word[i]);
     reversedString = reversedString + word[i];
  }
 return reversedString
}

reverse("Youssef");
console.log(reversedString)

if (1==1) {
	console.log("here is your reversed string --> " + reversedString);
}
