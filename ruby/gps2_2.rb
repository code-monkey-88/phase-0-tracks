# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [convert input into hash key]
  # set default quantity
  # print the list to the console [p grocery_list]
# output: [hash]

puts "welcome to the grocery list generator"
      grocery_list = {}
puts "please enter items to be added to grocery list seperated by spaces"
      items = gets.chomp
      items_array = items.split(' ')

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

      puts "please enter additional items to be added to grocery list seperated by spaces"
            new_items = gets.chomp
            new_items_array = new_items.split(' ')

                  def grocery_list_adder(hash, array)
                    array.each do |item|
                      item
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

# Method to print a list and make it look pretty
# input: [final hash]
# steps:
  # consider capitalising final result or any other asthetic modification
  # iterate through the hash to print item and quantity on separate lines
  # method that takes a hash or each.do
# output: list of individual items and their quantities line-by-line
