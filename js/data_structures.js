var names = ['Ed', 'Mike', 'Prince', 'Tim'];
var colors = ['blue', 'green', 'red', 'orange'];

names.push('Lana');
colors.push('purple');

console.log(names);
console.log(colors);

var horse_colors = {};
for (var i=0; i < names.length; i++) {
  horse_colors[names[i]] = colors[i];
}

console.log(horse_colors);


//car data-structure
function Car(brand, year, isNew) {
  console.log("Our new car:", this);
  this.brand = brand;
  this.year = year;
  this.isNew = isNew;

  this.vroom = function () {console.log ("vroom vroom, vrOOM vrOOM, VROOM VROOM");};
  console.log("Car Initialization Complete");
}

var usedCar = new Car("Mercedes", 2015, false);
console.log(usedCar);
usedCar.vroom()

var newCar = new Car("BMW", 2017, true);
console.log(newCar);
newCar.vroom()
