Function to find the longest phrase
input: array of words or phrases
steps:
        iterate over each item within array
        measure length of string within each item
        //sort items from largest to smallest length (conditional statement?)
// output: return item with the longest length


var arrayWords = ["long phrase","longest phrase","longer phrase"];
var arrayWordsLength = [];
var length;

function measureItemLength(arrayWords) {
  for (var i in arrayWords) {
    // arrayWordsLength.push(arrayWords[i].length);
    // arrayWordsLength.sort();
    // console.log(arrayWordsLength);

    arrayWords.sort();
    length = arrayWords[i].length;
    console.log(length)
    }
}

measureItemLength(arrayWords);
// console.log(arrayWordsLength);

var longWords = ["long phrase","longest phrase","longer phrase"]
var longest = 0;
for (var i = 0; i < longWords.length; i++) {
if (longest.length < longWords[i].length) {
    longest = longWords[i];
  }
}

console.log(longest)
