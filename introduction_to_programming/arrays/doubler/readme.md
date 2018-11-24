# Doubler

Write a method `doubler(numbers)` that takes an array of numbers and returns a new array
where every element of the original array is multiplied by 2.

## Setup

```ruby
def doubler(numbers)

end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]
```

## Solution

```ruby
def doubler(numbers)
  # Create an array to be returned
	double = []

  i = 0
  while i < numbers.length
    # append array with double the number
    double << numbers[i] + numbers[i]

    i += 1
  end

  # return our array
  return double
end
```