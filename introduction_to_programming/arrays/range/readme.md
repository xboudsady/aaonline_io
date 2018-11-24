# Range

Write a method `range(min, max)` that takes in two numbers min and max. The function should return an array containing all numbers from min to max inclusive.

## Setup

```ruby
def range(min, max)

end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
```

## Solution

```ruby
def range(min, max)
  # create an empty array
  results = []

  # create a loop with the starting value of 'min'
  i = min
  while i <= max
    # appen our array
    results << i

    i += 1
  end

  return results
end
```