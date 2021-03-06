# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [convert input into hash key]
  # set default quantity
  # print the list to the console [p grocery_list]
# output: [hash]

puts "welcome to the grocery list generator"
      grocery_list = {}
puts "please enter items to be added to grocery list seperated by commas" #Refactor to include quantity?
      items = gets.chomp
      items_array = items.split(',')

      def grocery_list_generator(hash, array)
        array.each do |item|
          hash[item] = 1
        end
        return hash
      end

grocery_list_generator(grocery_list, items_array)
initial_grocery_list = grocery_list_generator(grocery_list, items_array)

p initial_grocery_list

# Method to add an item to a list
# input: list (item name, and optional quantity)
# steps:
  # print hash
  # ask user if they would like to add any additional items to the list?
  # set default quantity
  # print hash - debugging
# output: [updated hash]

puts "would you like to add additional items to your list (y/n)?"
    additional_items_wanted = gets.chomp
    if additional_items_wanted == "y"

      puts "please enter additional items to be added to grocery list seperated by commas"
            new_items = gets.chomp
            new_items_array = new_items.split(',')

                  def grocery_list_adder(hash, array)
                    array.each do |item|
                      hash[item] = 1
                    end
                    return hash
                  end

      grocery_list_adder(initial_grocery_list, new_items_array)
      updated_grocery_list = grocery_list_adder(initial_grocery_list, new_items_array)

      puts "please see your updated list below :) "
      p updated_grocery_list

    else
      puts "here is your original shopping list:"
      p initial_grocery_list
    end


# Method to remove an item from the list
# input: [updated hash]
# steps:
  # print hash
  # ask user if they would like to delete an item from the list
  # wrap above in a loop to allow deletion of unknown amount of items
  # conditional statement to initialise or break loop
  # print hash - debugging
# output: [trimmed hash]

puts "would you like to remove items to your list (y/n)?"
  remove_items = gets.chomp
  if remove_items == "y"

      puts "please enter items to be deleted seperated by commas"
            delete_items = gets.chomp
            delete_items_array = delete_items.split(',')

                  def grocery_list_delete(hash, array)
                    array.each do |item|
                      hash.delete(item)
                    end
                    return hash
                  end

      grocery_list_delete((updated_grocery_list || initial_grocery_list), delete_items_array)
      deleted_grocery_list = grocery_list_delete((updated_grocery_list || initial_grocery_list), delete_items_array)

      puts "please see your updated list below after removing items "
      p deleted_grocery_list
    else
      puts "here is your previous shopping list:"
      p (updated_grocery_list || initial_grocery_list)
  end

# Method to update the quantity of an item
# input: [hash]
# steps:
  # print hash with default quantities
  # would you like to update the quantity of items on your list?
  # conditional statement to intialise or break loop
  # prompt user requesting value you would like to update?
  # request new quantity for that specific value
  # print hash - debugging
# output: [final hash]

quantity_update = false
until quantity_update == "n"

puts "would you like to update the quantity of items in your list (y/n)?"
  quantity_update = gets.chomp
  if quantity_update == "y"

  #Refactor LOOP
      puts "please enter the name of the item who's quantity you wish to update or type done when finished?"
            item_name = gets.chomp
      puts "please enter new quantity:"
            quantity = gets.chomp
            quantity = quantity.to_i

                  def grocery_list_final(hash, string, integer)
                    hash.each do |item, quantity|
                      hash[string] = integer
                    end
                    return hash
                  end

      grocery_list_final((deleted_grocery_list || updated_grocery_list || initial_grocery_list), item_name, quantity)
      final_grocery_list = grocery_list_final((deleted_grocery_list || updated_grocery_list || initial_grocery_list), item_name, quantity)

      puts "please see your updated list below after updating quantities "
      p final_grocery_list
    else
      puts "here is your previous shopping list:"
      p (deleted_grocery_list || updated_grocery_list || initial_grocery_list)
  end
end
# Method to print a list and make it look pretty
# input: [final hash]
# steps:
  # consider capitalising final result or any other asthetic modification
  # iterate through the hash to print item and quantity on separate lines
  # method that takes a hash or each.do
# output: list of individual items and their quantities line-by-line

(deleted_grocery_list || updated_grocery_list || initial_grocery_list).each do |item, quantity|
  puts "your shopping list consists of #{quantity} #{item}"
end

# Reflection
# What did you learn about pseudocode from working on this challenge?
#helped me break down problem into manageable chunks for bug checking

# What are the tradeoffs of using arrays and hashes for this challenge?
# arrays are quicker to manipulate however it is harder to present your data in pairs.

# What does a method return?
# takes an argument as input and returns a value as output

# What kind of things can you pass into methods as arguments?
# strings, arrays, hashes, floats, integers

# How can you pass information between methods?
# nest method call for one method into another method call or store output into a variable and call variable in next method to minimise confusion.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# control input/output between methods was solidified, however still confused about how I can implement DRYness here
