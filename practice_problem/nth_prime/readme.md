# Nth Prime

Write a method that returns the `n`th prime number. Recall that only numbers greater than 1 can be prime.

## Setup

```ruby
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #nth_prime")
puts("===============================================")
    puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
    puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
    puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
    puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
    puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts("===============================================")
```
## Solution

```ruby
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  nth_num = 0

  # 2 is the first prime number so initialize i with 2
  i = 2
  # initiate loop with a 'true' state, will need a 'false' to break
  while true
    # Check to see if i is a prime number, from our previous function
    if is_prime?(i)

      # If i is a prime number, increment nth_num by 1
      # If i is not a prime number, do nothing and increment i by 1 -- our loop counter
      nth_num += 1

      # if nth_num is the same as n, return i
      # if nth_num does not equal to n, increment i
      if nth_num == n
        return i
      end
    end

    # increment our counter until we have a match for n
    i += 1
  end
end

puts nth_prime(1) # 2
puts nth_prime(2) # 3
puts nth_prime(3) # 5
puts nth_prime(4) # 7
puts nth_prime(5) # 11
```