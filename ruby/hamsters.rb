puts "Welcome to the Hamster id-generator"

puts "what is your hamsters name?"
  hamster_name=gets.chomp

puts "what is your hamsters volume level?"
  volume_level=gets.chomp

puts "what is your hamster's fur color?"
  fur_color=gets.chomp

puts "is the hamster a good candidate for adoption?"
  adoption=gets.chomp

puts "what is your hamster's estimated age?"
  age=gets.chomp

  if age==""
    age=nil
  else
    age=age.to_f
  end

puts "Hamster id-card:"
puts "hamster name is #{hamster_name}"
puts "voume level is #{volume_level}"
puts "fur color is #{fur_color}"
puts "adopt? #{adoption}"
puts "estimated age #{age}"
