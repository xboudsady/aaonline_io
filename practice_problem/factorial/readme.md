# Factorial

Write a method that takes an integer `n` in; it should return n*(n-1)(n-2)...*2*1. 

Assume `n >= 0`. 

As a special case, `factorial(0) == 1`.

## The Setup

```ruby
def factorial(n)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #factorial")
puts("===============================================")
    puts(
      'factorial(0) == 1: ' + (factorial(0) == 1).to_s
    )
    puts(
      'factorial(1) == 1: ' + (factorial(1) == 1).to_s
    )
    puts(
      'factorial(2) == 2: ' + (factorial(2) == 2).to_s
    )
    puts(
      'factorial(3) == 6: ' + (factorial(3) == 6).to_s
    )
    puts(
      'factorial(4) == 24: ' + (factorial(4) == 24).to_s
    )
puts("===============================================")
```

## Solution

```ruby
def factorial(n)
  # Check if factorial if less than 0, if true return nil
  if n < 0 
    return nil
  end

  # Create a variable to be return with starting value of 1 so it can be used in the loop below as a (n * 1) starting value
  result = 1

  # If arguement is greater than 1
  while n > 0
    # Re-assign value of 1 times its argument as a starting value
    result = result * n

    # Decrement by 1, to mulitple the next lower value (e.g. 3 * 2 * 1) - to end the loop
    n -= 1
  end

  # Return the final value
  return  result
  
end

factorial(3) # --> 6
```