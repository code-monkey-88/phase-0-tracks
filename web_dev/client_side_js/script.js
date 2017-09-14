window.onload = function () { alert("It's loaded!") };
console.log("Script Running");

var headings = document.getElementsByClassName('headings')
var first_heading = headings[0]
var second_heading = headings[1]

first_heading.style.backgroundColor = 'white'
second_heading.style.border = '5px solid purple'

var third_heading = document.getElementsByTagName('h3');
var h3 = third_heading[0]

h3.onclick = function() {
  console.log('clicked');
};
