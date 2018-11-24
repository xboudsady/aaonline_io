# Select Odds

Write a method `select_odds(numbers)` that takes in an array of numbers and returns a new array containing the odd numbers of the original array.

## Setup

```ruby
def select_odds(numbers)

end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []
```

## Solution

```ruby
def select_odds(numbers)
  # Create an array to be returned
  results = []

  # loop through our numbers array
  i = 0
  while i < numbers.length
    # find odd numbers in array
    if numbers[i] % 2 != 0
      # append that number to our new array
      results << numbers[i]
    end
    i += 1
  end

  return results
end
```