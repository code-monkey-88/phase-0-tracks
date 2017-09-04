puts "welcome to the new hire registration portal"
puts "how many employees will be processed?"
  employee_number=gets.chomp.to_i


employee_number.times do

    puts "what is your name?"
      name=gets.chomp
      name=name.split(/ |\_|\-/).map(&:capitalize).join(" ")

    puts "How old are you?"
      age=gets.chomp.to_i

    puts "What year were you born?"
      dob=gets.chomp.to_i
      dob=2017-dob

    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
      garlic_wanted=gets.chomp

    puts "Would you like to enroll in the company’s health insurance? (y/n)"
      insurance_wanted=gets.chomp

    end_list="done"
    end_list_2="sunshine"
    puts "name any allergies, one at a time (type done when finished)"
      allergies=gets.chomp

    #accomplished without a break
        while allergies != end_list && allergies !=end_list_2
          puts "list allergies: "
          allergies = gets.chomp
        end

     #hierarchy of importance or minimum denominator up top
        if name=="Drake Cula" || name=="Tu Fang"
          vampire="definately"
        elsif age!=dob && garlic_wanted=="n" && insurance_wanted=="n"
          vampire="almost certainly"
        elsif allergies=="sunshine"
          vampire="probably"
        elsif age!=dob && (garlic_wanted=="n" || insurance_wanted=="n")
          vampire="probably"
        elsif  age==dob && (garlic_wanted=="y" || insurance_wanted=="y")
          vampire="probably not"
        else
          puts "Results inconclusive"
        end
          puts "#{name} is #{vampire} a vampire"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
