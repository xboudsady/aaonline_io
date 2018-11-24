# Odd Range

Write a method `odd_range(min, max)` that takes in two numbers min and max. The method should return an array containing all odd numbers from min to max (inclusive).

## Setup

```ruby
def odd_range(min, max)

end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
```

## Solution

```ruby
# create a variable to be returned
  results = []
  
  # create a loop, with min as our starting point
  i = min
  while i <= max
    # find the odd numbers
    if i % 2 != 0
      # append odd numbers to array
      results << i
    end
  
    i += 1
  end

  # return our array
  return results
```