# All Else Equal

Write a method `all_else_equal` that takes in an array of numbers. The method should return the element of the array that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil.

## Setup

```ruby
ef all_else_equal(arr)

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array
```

## Solution

```ruby
# Main Function
def all_else_equal(arr)
    # sum of our array
    sum = sum_array(arr)

    # loop through array to find half
    arr.each do |ele|
        # check if our array contain the half
        if ele == sum / 2.0
            return ele
        end
    end

    # if no half ele is found
    return nil
end


# Create a helper function to handle sum of array elements
def sum_array(arr)
    sums = 0

    arr.each do |num|
        sums += num
    end

    return sums
end
```