# Pick Primes

Write a method `pick_primes` that takes in an array of numbers and returns a new array containing only the prime numbers.

## Setup

```ruby
def pick_primes(numbers)

end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
```

## Solution

```ruby
# Create a helper function to deterine prime number

def prime?(num)
    # any number < 2 is not a prime number (not divisible by itself)
    if num < 2
        return false
    end

    # check if number is divisible by itself, starting from 2 to its max which is num
    (2...num).each do |divisor|
        # check for divisibility
        if num % divisor == 0
            # if not divisible
            return false
        end
    end
    return true
end

# MAIN FUNCTION

def pick_primes(number)
    # use the select() method to return a new array of prime numbers only
    return numbers.select do |num|
        prime?(num)
    end
end
```