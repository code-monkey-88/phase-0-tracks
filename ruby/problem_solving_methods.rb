def search_array(arr, value)
    arr.each do |i|
        if i == value
            p value
        elsif
            i != value
            p nil
        end
    end
end

arr = [10, 11, 12, 13]
search_array(arr, 9)
search_array(arr, 10)

# #add two values together using their index
# #find a way to increment the index

def fib(count)
  array = [0,1]
    until array.length == count
        result = array [-1] + array[-2]
        p array << result
    end
end

fib (6)
