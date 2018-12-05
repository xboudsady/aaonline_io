# Summation Sequence

A number's summation is the sum of all positive numbers less than or equal to the number. For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21. Write a method `summation_sequence `that takes in a two numbers: `start` and `length`. 

The method should return an array containing `length` total elements. The first number of the sequence should be the `start` number. At any point, to generate the next element of the sequence we take the summation of the previous element. You can assume that `length` is not zero.

## Setup

```ruby
def summation_sequence(start, length)

end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]
```

## Solution

```ruby
# MAIN FUNCTION

def summation_sequence(start, length)
    # create an array to be returned
    seq = [start]

    while seq.length < length
        # grab the last element
        last_ele = seq[-1]
        # get the summation of the last element
        next_ele = summation(last_ele)
        # shoevel into our array
        seq << next_ele
    end

    return seq
end


# HELPER FUNCTION

def summation(n)
    # create a variable to be returned
    sum = 0

    # iterate using range
    (1..n).each do |num|
        # add the iteration of num to the total sum
        sum += num
    end

    # return our sum
    return sum
end
```