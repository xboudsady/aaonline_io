# First In Array

Write a method `first_in_array` that takes in an array and two elements, the method should return the element that appears earlier in the array.

## Setup

```ruby
def first_in_array(arr, el1, el2)

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
puts first_in_array(["apple", "orange" ,"banana" ], "banana", "orange"); # => "orange"
puts first_in_array(["a", "b" ,"c", "e", "f" ], "f", "c"); # => "c"
```

# Solution

```ruby
def first_in_array(arr, el1, el2)

  # create a variable to store el1, & el2 index value
  idx1 = 0
  idx2 = 0
  earlier = 0

  # loop throug each index
  arr.each_with_index do |str, i|
    # find the first match and store that value
    if str == el1
      # if ele1 matches our array, assign that index to idx 1
      idx1 = i
    elsif str == el2
      # if ele1 matches our array, assign that index to idx 2
      idx2 = i
      next
    end
  end

  # assign idx1 to earlier, if its less than idx2 (we want the smaller value)
  if idx1 < idx2
    earlier = idx1
  else
    # assign idx2 to earlier if idx1 is larger
    earlier = idx2
  end

  # return our array with earlier as the index number
  return arr[earlier]
end
```