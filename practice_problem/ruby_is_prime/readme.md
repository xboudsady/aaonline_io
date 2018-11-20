# Ruby is Prime

Write a method that takes in an integer (greater than one) and returns true if it is prime; otherwise return false. You may want to use the `%` modulo operation. 
`5 % 2` returns the remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`. More generally, if `m` and `n` are integers, `m % n == 0` if and only if `n` divides `m` evenly. You would not be expected to already know about modulo for the challenge.

## Setup

```ruby
def is_prime?(number)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #is_prime?")
puts("===============================================")
    puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
    puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
    puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
    puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
puts("===============================================")
```

## Solution

```ruby
def is_prime?(number)
  # Take care of number less than 1, and make 2 a prime

  # Return 'false' if less than 1
  if number <= 1
    return false
  # 2 is a prime number, code ends...
  elsif number == 2
    return true
  end

  # Start counter at 2, since we included 2 as a prime number
  i = 2

  # Increment to our input number
  while i < number
    # Not prime, if there is no remainder
    not_prime = number % i == 0 # i = 2

    # If condition set is 'true'
    if not_prime
      return false  # Inicate not a prime
    end

    i += 1
  end

  # Default true, if no prime is found
  return true
end

puts is_prime?(2) # true
puts is_prime?(3) # true
puts is_prime?(4) # false
puts is_prime?(9) # false
```