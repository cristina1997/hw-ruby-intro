# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE9
  # nums = Array[1, 2, 3, 4];
  # puts nums.sum
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # nums = Array[0, 5, 10]
  # puts nums.max(2).sum
  # Source code adapted from: https://stackoverflow.com/questions/19350524/how-to-sum-the-largest-two-elements-in-an-array/33507068
  return arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
=begin 
  gets random 2 numbers
  - arr.sample(2) 
=end

  # Source code adapted from: https://www.codementor.io/tips/8249093137/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
  return !!arr.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # Source code adapted from: https://stackoverflow.com/questions/18406509/using-regexp-to-check-whether-a-string-starts-with-a-consonant
  return s =~ /\A[^aeiou]/
end

def binary_multiple_of_4? s
  # YOUR CODE 
  # Source code adapted from: https://github.com/merrua/ruby/blob/master/binary_multiple_of_4.rb
  if s == "0"
    return true
  elsif /^[10]*00$/.match(s)
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
