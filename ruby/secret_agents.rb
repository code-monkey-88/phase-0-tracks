#encrypt alogorithm:
#build a counter
#print password[index].next within loop
#wrap with method
#ensure counter is set to 0 outside loop and incremented within loop

def encrypt(string)
  index=0
    while index < string.length
      p string[index].next
      index +=1
    end
  end
encrypt("abc")
encrypt("zed")

#decrypt algorithm:
#build a counter
#ask a string fo the index of a letter
#minus one from the letter index and store integer in a variable
#use integer as an index to a string of the full alphabet

def decrypt(string)
  index=0
    while index < string.length
      letter_position=("abcdefghijklmnopqrstuvwxyz".index(string[index]))-1
      p "abcdefghijklmnopqrstuvwxyz"[letter_position]
      index +=1
    end
  end
decrypt("bcd")
decrypt("afe")
