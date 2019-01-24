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
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
