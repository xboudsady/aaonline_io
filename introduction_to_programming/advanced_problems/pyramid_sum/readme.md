# Pyramid Sum

Write a method `pyramid_sum` that takes in an array of numbers representing the base of a pyramid. The function should return a 2D array representing a complete pyramid with the given base. To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

## Setup

```ruby
# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)

end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
```

## Solution

```ruby
# Main Function
def pyramid_sum(base)
    # current pyramid base
    pyramid = [base]

    # construct levels corresponding to our base
    # e.g. if base is 4, height of pyramid is 4 levels
    while pyramid.length < base.length
        # get the previous level ouf our pyramid, initially start at index 0
        prev_level = pyramid[0]
        # get the next level of our pyramid, use helper function to get the next level
        next_level = adjacent_sums(prev_level)
        # tak ethe next level and insert to the begining of our array
        pyramid.unshift(next_level)
    end

    # return our pyramid
    return pyramid
end


# Helper Function
# Create a helper function to handle the sum of each conscutive array elements

def adjacent_sums(arr)
    # create a new array to be returned
    new_arr = []

    # iterate through each array
    arr.each.with_index do |ele, i|
        # handle the last element in the iteration
        if i < arr.length - 1
            # add adjacent array element together
            new_ele = arr[i] + arr[i + 1]
            # shovel results into our new array
            new_arr << new_ele
        end
    end

    return new_arr
end

```