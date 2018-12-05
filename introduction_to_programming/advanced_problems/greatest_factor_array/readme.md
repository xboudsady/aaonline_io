# Greatest Factor Array

Write a method `greatest_factor_array` that takes in an array of numbers and returns a new array where every even number is replaced with it's greatest factor. A greatest factor is the largest number that divides another with no remainder. 

For example the greatest factor of 16 is 8. (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

## Setup

```ruby
def greatest_factor_array(arr)


end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
```

## Solution

```ruby
def greatest_factor_array(arr)
  # map() returns an array
  new_arr = arr.map do |num|
    # only modify even values
    if num % 2 == 0
      # call our helper function
      greatest_factor(num)
    else
      # if its an odd number, do not nothing
      num
    end
  end

  return new_arr
end

# helper function

def greatest_factor(num)
  # iterate use reverse_each() method
  (1...num).reverse_each do |i|
    # looking for factors -- number that is divisble 
    # since we reverse it, it should return the largest factor value
    if num % i == 0
      return i
    end
  end
end
```