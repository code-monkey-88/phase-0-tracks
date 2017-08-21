def search_array(arr, value)
    here = false
    count = 0
    while count < arr.length
        if arr[count] == value
            here = true
            puts count
        end
        count += 1
    end
    if here == false
        puts "nil"
    end
end


arr = [10, 11, 12, 13]
search_array(arr, 9)

#add two values together using their index
#find a way to increment the index


def fib(count)
  array = [0,1,1]
    until array.length == count
        result = array [-1] + array[-2]
        p array << result
    end
end

fib (6)

=begin
def search_array2(arr, value)
    arr.each do |i|
        if i == value
            p
        end
    end
end



def search_array(arr, value)
    here = false
    count = 0
    while count < arr.length
        if arr[count] == value
            here = true
            puts count
        end
        count += 1
    end
    if here == false
        puts "nil"
    end
end


arr = [10, 11, 12, 13]
search_array(arr, 9)
=end

    # while loop. iterate though all values
    #loop through each value
    #check if that value is equal to the argument
    #if yes return the index value
    #if no, go to next value.
    #if all the values are not equal, print nil


#do this a number of times we ask for:
#start with 0, 1
#look at the last 2 values, [-1], [-2]
#add the sum of those 2 values to an array .push <<
#store that value
#look at the last 2 again, and repeat until it is the count value
#return the total sum

=begin

def fib(number_of_fib_numbers)
    fib_array = [0,1]
    count = 2

    while count < number_of_fib_numbers
        fib_next = fib_array[-1] + fib_array[-2]
        fib_array << fib_next
        count += 1
    end
    puts fib_array

end

fib(100)
