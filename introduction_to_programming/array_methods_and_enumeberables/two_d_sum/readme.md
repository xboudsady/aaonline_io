# Two D Sum

Write a method `two_d_Sum `that takes in a two dimensional array and returns the sum of all elements in the array.

## Setup

```ruby
def two_d_sum(arr)

end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
```

## Solution

```ruby
def two_d_sum(arr)
  sum = 0

  # outer loop
  arr.each do |subArray|
    # inner loop
    subArray.each do |num|
      sum += num
    end
  end

  return sum
end
```