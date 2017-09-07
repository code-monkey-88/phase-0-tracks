Function to find the longest phrase
input: array of words or phrases
steps:
        //iterate over each item within array
        //measure length of string within each item
        //create empty string
        //set empty string to new item if length is greater
        // output: return item with the longest length



  var phrases = ["long phrase","longest phrase","longer phrase"];

  function findLongestPhrase(phrases) {
    var longestPhrase = "";

    for (var i=0; i < phrases.length; i++) {
      if (phrases[i].length > longestPhrase.length) {
        longestPhrase = phrases[i];
      }
    }
    return longestPhrase;
  }

  console.log(findLongestPhrase(phrases))
