# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ret = 0
  arr.each { |x| ret += x } 
  return ret
end

def max_2_sum arr
  ret = arr[0] || 0
    if arr.count >= 2
      arr.sort! { | x1, x2 | x2 <=> x1 }
      ret = arr[0] + arr[1]
    end
  return ret
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each { | x, y | 
    if  x + y == n 
      return true 
    end
  }
  return false
end

# Part 2

def hello(name)
  str = "Hello, " << name
  return str.to_s
end

def starts_with_consonant? s
  
  c = s[0].to_s.downcase
  
  if /[A-Za-z]+/ =~ c && /[^aeiou]+/ =~ c
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  if /^[01]*$/ =~ s && 
    !s.empty? && 
    s.to_i(2) % 4 == 0
      return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize( isbn, price )
    raise ArgumentError, 'Type ISBN number' unless !isbn.empty? 
    raise ArgumentError, 'Price must be greater than 0' unless price > 0 
    @isbn = isbn
    @price = price
  end
 
  def isbn
    @isbn
  end
  
  def isbn=(s)
    @isbn = s
  end
  
  def price
    @price
  end
  
  def price=(s)
    @price = s
  end
  
  def price_as_string
    return sprintf("$%.02f", @price )
  end
end
