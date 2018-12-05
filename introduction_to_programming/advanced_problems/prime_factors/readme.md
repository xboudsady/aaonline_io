# Prime Factors

Write a method `prime_factors` that takes in a number and returns an array containing all of the prime factors of the given number.

## Setup

```ruby
def prime_factors(num)

end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
```

## Solution

```ruby
# create a function that will take in all numbers that are factors of num

def prime_factors(num)
    # create an array to store numbers
    facts = []

    # use range to iterate to find factors number, including num
    (1..num).each do |i|
        # 1st condition check if its a factor 
        if num % i == 0
            facts << i
        end
    end

    return facts
end

# create a hehlper function for finding if its a prime number

def prime?(num)
    # any number < 2 is automatically not a prime number
    if num < 2
        return false
    end

    # iterate using range, all but excluding num
    (2...num).each do |i|
        if num % i == 0
            # prime number can be divisible by i
            return false
        end
    end

    return true
end
```