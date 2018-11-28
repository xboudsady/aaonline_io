# Combinations

Write a method `combinations` that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of 2 elements of the array.

## Setup

```ruby
def combinations(arr)

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
```

## Solution

```ruby
def combinations(arr)
  # pair elements in the array
  pairs = []

  # compare this element to every element of the array
  arr.each_with_index do |ele1, idx1|
    # iterate through the second element in the array
    arr.each_with_index do |ele2, idx2|
      # in order to avoid repeat, idx2 needs be greater than idx1 
      # idx2 is always looking at something newer
      if idx2 > idx1
        # shuvel these elements into the pairs array, creating pairs in a 2-dimenstional array
        pairs << [ele1, ele2]
      end
    end
  end

  return pairs
end
```