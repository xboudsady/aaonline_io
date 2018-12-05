# Fibonacci

The fibonacci sequence is a sequence of numbers whose first and second elements are 1. To generate further elements of the sequence we take the sum of the previous two elements. For example the first 6 `fibonacci` numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

## Setup

```ruby
def fibonacci(length)

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
```

## Solution

```ruby
def fibonacci(length)
    # check the length of our array
    if length == 0
        return []
    elsif length == 1
        return [1]
    end

    seq = [1, 1]

    # generate a sequence up to the give length
    while seq.length < length
        # get last element of the sequence
        last = seq[-1]
        # get second to last element of the sequence
        second_to_last = seq[-2]
        # add them together
        next_ele = last + second_to_last
        # shovel into our array
        seq << next_ele
    end

    return seq
end
```