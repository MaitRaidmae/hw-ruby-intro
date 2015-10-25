# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x| sum+=x}
  return sum
end


def max_2_sum arr
  sum = 0
  if arr.length == 0
    sum = 0
  elsif (arr.length == 1)
    sum = arr[0]
  else
    sorted = arr.sort!.reverse
    sum=sorted[0]+sorted[1]
  end
  return sum
end

def sum_to_n? arr, n
  sumTrue = false
  temp = 0
  for i in 0..arr.length-1
    j = i + 1
    temp = arr[i]
    for j in i+1..arr.length-1
      if temp + arr[j] == n
        sumTrue = true
      end 
    end 
  end 
  return sumTrue
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /^[a-z]/i && !(s =~ /^[aeoui]/i)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # Check for valid binary
  if s =~ /^[01]+$/i
    num = s.to_i(2)
    if num%4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    
  if price<=0 || isbn.length == 0
    raise ArgumentError
  end
    
    @isbn   = isbn
    @price  = price
    
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    return "$#{'%.2f' % @price}"
  end
  
end

book = BookInStock.new("s",3)

puts book.price_as_string()