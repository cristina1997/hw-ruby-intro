# When done, submit this entire file to the autograder.

=begin
---------------------------------------------------------
  Assigns an Array of values to a variable called nums
    - nums = Array[1, 2, 3, 4];
  Outputs the sum of the numbers in the array to the console  
    - nums.sum
  Outputs the sum of the biggest numbers in the array to the console  
    - puts nums.max(2).sum
  It chooses 2 random numbers in an array
    - arr.sample(2) 
  Getters and setters: 
    - https://www.quora.com/What-are-setters-and-getters-in-Ruby
  ArgumentErrors: 
    - https://www.exceptionalcreatures.com/bestiary/ArgumentError.html
  Print out a float to 2 decimal places:
    - https://stackoverflow.com/questions/10459901/how-do-you-round-a-float-to-two-decimal-places-in-jruby
  Different types of attributes: 
    - https://itnext.io/a-matter-of-attributes-668bdd29ad29
---------------------------------------------------------
=end

# Part 1

def sum arr
  # Gets the sum of the numbers in the array
  return arr.sum
end

# Source code adapted from: https://stackoverflow.com/questions/19350524/how-to-sum-the-largest-two-elements-in-an-array/33507068
def max_2_sum arr
  # Gets the sum of the largest 2 numbers in the array
  return arr.max(2).sum
end

# Source code adapted from: https://www.codementor.io/tips/8249093137/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
def sum_to_n? arr, n
  # It adds all combinations of 2 numbers and whichever adds up to n is returned
  return !!arr.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # Returns the name passed
  return "Hello, #{name}"
end

# Source code adapted from: https://stackoverflow.com/questions/18406509/using-regexp-to-check-whether-a-string-starts-with-a-consonant
def starts_with_consonant? s
  # Regex (regular expressions) are used to check if s starts with a consonant by excluding vowels
  return s =~ /\A[^aeiou]/
end

# Source code adapted from: https://github.com/merrua/ruby/blob/master/binary_multiple_of_4.rb
def binary_multiple_of_4? s
  # It returns true if the string is 0 or if it matches the regex (regular expression) otherwise it's false 
  if s == "0"
    return true
  elsif /^[10]*00$/.match(s)
    return true
  end
end

# Part 3

# Source code adapted from: https://github.com/merrua/ruby/blob/master/binary_multiple_of_4.rb
class BookInStock
  # Attributes
  attr_reader   :isbn
  attr_accessor :price

  # Getter
  def isbn=(isbn)
    @isbn = isbn
  end

  # Setter
  def price
    @price
  end
  
  # Constructor
  def initialize(isbn, price)
    # Argument errors
    raise(ArgumentError, "Empty ISBN") if isbn == ""
    raise(ArgumentError.new("Empty price")) if price == nil
    raise ArgumentError.new("Price is less than or equal to zero") if price <= 0
    
    # Assign the instance variables to the data types requested 
    @isbn = String(isbn)
    @price = Float(price)
  end
  
  # Returns price as a number with 2 decimal places
  def price_as_string
    return "$%.2f" % price
  end
end
