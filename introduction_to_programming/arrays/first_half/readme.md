# First Half

Write a method `first_half(array)` that takes in an array and returns a new array containing the first half of the elements in the array. If there is an odd number of elements, return the first half including the middle element.

## Setup

```ruby
def first_half(array)

end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
```

## Solution

```ruby
def first_half(array)
  # create an array to be returned
  first_half = []

  # find half of the array length
  if array.length % 2 == 0
    # if even, divide by 2
    first_half_count = array.length / 2.0
  else 
    # if odd, divide by 2.0 and round up, to include middle element
    first_half_count = (array.length / 2.0).ceil
  end

  # loop through our array, up to the halfway point
  i = 0
  while i < first_half_count
    first_half << array[i]

    i += 1
  end

  # return array
  return first_half

end
```