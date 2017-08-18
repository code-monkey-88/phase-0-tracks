#prompt user to enter their name
#convert their name into a hash with desired elements

puts "Welcome to the client preferences portal"
puts  "Please enter your name:"
      name=gets.chomp

      name = {}

#convert input into appropriate data types
puts  "Please enter your age:"
      name[:age]=gets.chomp
      name[:age]=name[:age].to_i
puts  "How many children do you have?"
      name[:children]=gets.chomp
      name[:children]=name[:children].to_i
puts  "Please enter your decor_theme"
      name[:decor_theme]=gets.chomp
puts  "Do you have any pets (true/false)?"
      name[:pets]=gets.chomp
      if name[:pets] == "false"
         name[:pets] = false
      elsif name[:pets] == "true"
         name[:pets] = true
      end

p name
#print hash after all questions have been answered

puts "would you like to update any of your personal information? (age,children,decor_theme,pets)"
      key=gets.chomp

      if key=="none"
      else key=key.to_sym
        puts "enter new value:"
        new_value=gets.chomp
        name[key]=new_value
      end
p name
#give user one opportunity to edit their input - conditional logic or use .replace method
