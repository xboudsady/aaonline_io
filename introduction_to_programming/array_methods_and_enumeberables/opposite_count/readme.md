# Opposite Count

Write a method `opposite_count` that takes in an array of unique numbers. The method should return the number of pairs of elements that sum to 0. (opposite signs e.g. -2, 2 == 0)

## Setup

```ruby
def opposite_count(nums)

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

```

## Solution

```ruby
def opposite_count(nums)
  count = 0

  # generate pairs
  # compare first number with the rest
  nums.each_with_index do |num1, idx1|
    # inner loop to iterate through next element
    nums.each_with_index do |num2, idx2|
      if num1 + num2 == 0 && idx2 > idx1    # they have opposite signs, and removes duplicates
        # find pairs of opposite number
        count += 1 
      end
    end
  end

  return count
end
```