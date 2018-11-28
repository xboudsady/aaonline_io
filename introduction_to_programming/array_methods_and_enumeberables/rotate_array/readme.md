# Rotate Array

Write a method `rotate_array` that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.

## Setup

```ruby
def rotate_array(arr, num)

end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts
```

## Solution

```ruby
def rotate_array(arr, num)
  # to rotate the array
  # do this number of time
  num.times do 
    # pop last element out of array
    ele = arr.pop
    # add to the front of array, pushing the rest of number over
    arr.unshift(ele)
  end

  # return our array
  return arr
end
```