# Prime

Write a method `prime?` that takes in a number and returns a boolean, indicating whether the number is prime. A prime number is only divisible by 1 and itself.

## Setup

```ruby
def prime?(num)

end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
```

## Solution

```ruby
def prime?(num)
    # any number < 2 is not a prime number (not divisible by itself)
    if num < 2
        return false
    end

    # check if number is divisible by itself, starting from 2 to its max which is num
    (2...num).each do |divisor|
        # check for divisibility
        if num % divisor == 0
            # if not divisible, 
            return false
        end
    end
    return true
end
```