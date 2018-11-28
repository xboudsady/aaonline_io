# Two D Translate

Write a method `two_d_translate` that takes in a 2 dimensional array and translates it into a 1 dimensional array. You can assume that the inner arrays always have 2 elements. See the examples.

## Setup

```ruby
def two_d_translate(arr)

end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
```

## Solution

```ruby
def two_d_translate(arr)
  # create an array to be returned
  new_arr = []

  # loop through the array
  arr.each do |subArray|
    # indexing to that sub array
    ele = subArray[0]               # 'boot'
    num = subArray[1]               # '3'

    # take the num and shovel that amount in our new array
    num.times { new_arr << ele }

  end
  
  return new_arr
end
```