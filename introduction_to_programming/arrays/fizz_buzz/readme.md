# Fizz Buzz

Write a method `fizz_buzz(max)` that takes in a number max and returns an array containing all numbers from 0 to max that are divisible by either 4 or 6, but not both.

## Setup

```ruby
def fizz_buzz(max)

end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
```

## Solution

```ruby
def fizz_buzz(max)
  # create a variable to be returned
  results = []

  # loop up to our max but not including
  i = 0
  while i < max
    # 1st condition - divisible by 4 or 6
    # 2nd condition - not divisible by both 
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      # append array
      results << i
    end

    i += 1
  end

  # return our array
  return results
end
```