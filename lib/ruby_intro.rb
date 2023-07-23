# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each { |n| total = total+n}
return total
end

def max_2_sum arr
  total = 0
  sortedarr = arr.sort.reverse

  sortedarr.slice(0,2).each { |n| total += n}

return total
end

def sum_to_n? arr, n
  len = arr.length()
  (0..len-2).each do |i|
    (i+1..len-1).each do |j|
      return true if arr.at(i) + arr.at(j) == n
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z']
  vowels.each do |i|
    if s[0] == i or s[0] == i.upcase
      return true
    end
  end
return false
end

def binary_multiple_of_4?(s)
  return false unless s.match?(/^[01]+$/)
return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end