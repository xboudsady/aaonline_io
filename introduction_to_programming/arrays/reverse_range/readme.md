# Reverse Range

Write a method `reverse_range(min, max)` that takes in two numbers min and max. The function should return an array containing all numbers from min to max in reverse order. The min and max should be excluded from the array

## Setup

```ruby
def reverse_range(min, max)

end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
```

## Solution

```ruby
def reverse_range(min, max)
  # create an array to be returned
  results = []

  # create a loop starting point at max - 1
  i = max - 1
  while i > min 
    # append array
    results << i

    # decrement loop
    i -= 1
  end

  # return array
  return results
end
```