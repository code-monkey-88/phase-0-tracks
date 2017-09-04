#adding an interface:
#apply conditional logic to determine if user would like to encrypy or decrypt
#ask for user input
#somehow interpolate results to call appropriate method

puts "would you like to decrypt or encrypt a password?"
user_input=gets.chomp

  if user_input=="decrypt"
    puts "what would you like to decrypt?"
    decrypt_input=gets.chomp
    decrypt("#{decrypt_input}")
  elsif user_input=="encrypt"
    puts "what would you like to encrypt?"
    encrypt_input=gets.chomp
    encrypt("#{encrypt_input}")
  end



#encrypt alogorithm:
#build a counter
#print password[index].next within loop
#wrap with method
#ensure counter is set to 0 outside loop and incremented within loop

def encrypt(string)
  index=0
  encrypt_value=""
  while index < string.length
      letter=string[index].next
      if letter=="aa"
        encrypt_value << "a"
      else
        encrypt_value << letter
      end
  index +=1
  end
  encrypt_value
end
#encrypt("abc")
#encrypt("zed")


#decrypt algorithm:
#build a counter
#ask a string fo the index of a letter
#minus one from the letter index and store integer in a variable
#use integer as an index to a string of the full alphabet

def decrypt(string)
  index=0
  decrypt_value = ""
    while index < string.length
      letter_position=("abcdefghijklmnopqrstuvwxyz".index(string[index]))-1
      decrypt_value << "abcdefghijklmnopqrstuvwxyz"[letter_position]
      index +=1
    end
    decrypt_value
end
#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))# --> create new variable to store result

decrypt(encrypt("swordfish"))
