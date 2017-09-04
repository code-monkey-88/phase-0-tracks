class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "woof" * integer
    integer
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(integer)
    dog_age = 7 * integer
    puts "you dog is #{dog_age} dog years"
    dog_age
  end

  def sleep(integer)
    puts "ZzZ" * integer
    integer
  end

end

#driver code to initialise
truffles = Puppy.new
truffles.fetch('ball')
truffles.speak(3)
truffles.roll_over
truffles.dog_years(7)
truffles.sleep(3)
bubbles = Puppy.new


class Gymnast

  def initialize
    puts "Initializing new gymnast instance ..."
  end

  def flip(integer)
    puts "flip" * integer
    integer
  end

  def jump(name)
    puts "how high #{name}?"
    name
  end

end


index = 0
gymnast_array = []

until index == 50
  gymnast_array << Gymnast.new
  index +=1
end

p gymnast_array

gymnast_array.each do |person|
  person.jump('Jimmy')
  person.flip(3)
end
