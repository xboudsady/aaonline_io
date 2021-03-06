# Is Power of 2

Write a method that takes in a number and returns true if it is a power of 2. Otherwise, return false.

## Setup

```ruby
def is_power_of_two?(num)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #is_power_of_two?")
puts("===============================================")
    puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
    puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
    puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
    puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
    puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
puts("===============================================")
```

## Solution

```ruby
def is_power_of_two?(num)
  # Return 'false' if input number is less than 1
  if num < 1
    return false
  end

  # Start the loop with a true condition to initiate the code, will need a false to break out of loop
  while true
    # 1 is a power of 2
    if num == 1
      return true
    # Is the number and even number
    elsif num % 2 == 0
      # Re-assign 'num' to value divided by 2
      num = num / 2
    else
      # If odd number, return 'false', (last conidition breaks our loop)
      return false
    end
  end
end

puts is_power_of_two?(1) == true # true
puts is_power_of_two?(16) == true # true
puts is_power_of_two?(64) == true # true
puts is_power_of_two?(78) == false # true
puts is_power_of_two?(0) == false # true
```