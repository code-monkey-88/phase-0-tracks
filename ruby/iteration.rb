#before running bloc

=begin def status_update
  puts "You're fired!"
end
status_update


#after running block

def status_update
  puts "You're fired!"
  yield("Friedman", "Kholeif")
end
status_update { |name, name2| puts "MR. #{name} and MR. #{name2}" }
=end

vegetables = ["carrot", "cucumber", "lettuce", "tomato", "peas", "onion", "broccoli"]
#vegetables.delete_if {|item| item.length <7}
#vegetables.select! {|item| item.include?("r")}
#vegetables.reject! {|item| item.include?("r")}
# new_vegetables=vegetables.drop_while {|item| item.length >5}
#
# p vegetables
# p new_vegetables



# vegetables.each do |item|
#   puts item
# end
#
# p vegetables
#
# vegetables.map! do |item|
#   item.upcase
# end
#
# p vegetables



film = {"actor" => "will smith", "character"=>"J", "title"=>"MIB"}
#film.delete_if {|key, value| value.length <2}
#film.select! {|key, value| value.include?("J")}
#film.reject! {|key, value| value.include?("J")}
#p film


# film.each do |key, value|
#   p key
#   p value
# end
# p film
