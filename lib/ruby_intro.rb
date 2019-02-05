# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # takes an array of integers as an argument and returns the sum of its elements
  if arr.length != 0 then arr.inject(0){|sum, ele| sum + ele}
  else 0
  end
end

def max_2_sum arr
  #  takes an array of integers as an argument and returns the sum of its two largest elements
  # an empty array it should return zero. For an array with just one element, it should return that element
  if arr.length == 1
    result = arr[0]
  elsif arr.length > 1
    arr2 = arr.sort
    result = arr2[arr2.length-1] + arr2[arr2.length-2]
  else result = 0
  end
  return result
end

def sum_to_n? arr, n
  #  takes an array of integers and an additional integer, n, 
  #  as arguments and returns true if any two elements in the array of integers sum to n
  result = false
  if arr.combination(2).find { |a, b| a+b == n } != nil
    result = true
  end 
  return result
  
end


# Part 2

def hello(name)
  # akes a string representing a name and returns the string "Hello, " concatenated with the name
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # takes a string and returns true if it starts with a consonant and false otherwise. 
  "bcdfghjklmnpqrstvxz".each_char{ | l |
        return true if s[0] == l or s[0] == l.upcase}
  return false
end

def binary_multiple_of_4? s
  # that takes a string and returns true if the string represents a binary number that is a multiple of 4. 
  if (s =~ /[01]/) !=  0
    return false
  end  
  return false if s.empty?
  
  return true if s.to_i(2) % 4 == 0
  return false
  
end

# Part 3

class BookInStock
# Define a class BookInStock which represents a book with an ISBN number, 
# isbn, and price of the book as a floating-point number, price, as attributes.
def isbn
  @isbn
end

def price
  @price
end

def initialize(isbn, price)
  if isbn.empty? then raise(ArgumentError) end
  @isbn = isbn
  if price<=0 then raise(ArgumentError) end
  @price = price
end

def price_as_string
  return "$#{format("%.2f", @price)}"
end

def price=(new_price)
    if new_price <= 0 then raise(ArgumentError) end
    @price=new_price
end
  
def isbn=(new_isbn)
    if isbn.empty? then raise(ArgumentError) end
    @isbn=new_isbn
end


end
