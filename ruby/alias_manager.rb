
        #Method 1 - switching first and last name
        #convert string to array using .split (' ') then reverse
        #store the new variable using .map!
        #attempt in single line iteration

      def name_switch(real_name)
          new_string=real_name.split(' ').reverse.join(' ') # vowel method here
          spy_name=new_string.split('').map!{|letter|
              if letter == " "
                 letter = " "
              elsif letter == "a"
                  letter = "e"
              elsif letter == "e"
                letter = "i"
              elsif letter == "i"
                letter = "o"
              elsif letter == "o"
                letter = "u"
              elsif letter == "u"
                letter = "a"
              elsif letter == "z"
                letter = "b"
              else
                letter = letter.next
                #consonant_index = "bcdfghjklmnpqrstvwxyz".index(letter)+1
                #letter = "bcdfghjklmnpqrstvwxyz"[consonant_index]
                # :(
            end
          }.join('')

          return spy_name
      end

#loop and store values

list_of_spy_names = [] #to store the names
puts "What is your real name?"
real_name = gets.chomp

until real_name == "quit"
  spy_name = name_switch(real_name)
  list_of_spy_names << spy_name
  puts "Your spy name is #{spy_name}"
  puts "Submit the next name you want to translate or enter quit"
  real_name = gets.chomp
end

#iterate through our list of spy names
puts "Your new spy names are: "
list_of_spy_names.each { |spy_name| puts "#{spy_name}"}




#Method 3 - identify if letter is a vowel
#iterate through letters |letter| and index back from correct array
#print .next letter in the array
#conditional logic to handle edge cases at the end and which array to print from
