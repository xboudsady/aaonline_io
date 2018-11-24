# Factors Of

Write a method `factors_of(num)` that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.

## Setup

```ruby
def factors_of(num)

end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]
```

## Solution

```ruby
def factors_of(num)
  # create a variable to be returned
  results = []

  # create a counter, initiate at 1
  i = 1
  while i <= num
    # find number that is divisible by counter, but to and including num
    if num % i == 0
      # if true, append results array
      results << i
    end

    i += 1
  end

  # return our results
  return results
end
```