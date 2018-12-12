# Adjacent Sum

Write a method `adjacent_sum` that takes in an array of numbers and returns a new array containing the sums of adjacent numbers in the original array. See the examples.

## Setup

```ruby
def adjacent_sum(arr)

end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts
```

## Solution

```ruby
def adjacent_sum(arr)
    # create an array to be returned
    sums = []

    # iterate through our array being passed in
    arr.each_with_index do |ele, i|
        # test for last element in our array (cant add a nil), if false run code block
        if != arr.length - 1
            # grab the conscutive indices, looking 1 element ahead
            new_ele = ele + arr[i + 1]
            # shovel the new element into our array
            sums << new_ele
        end
    end

    # return our new array
    return sums
end
```