# Array Translate

Write a method `array_translate` that takes in an array whose elements alternate between words and numbers. The method should return a string where each word is repeated the number of times that immediately follows in the array.

## Setup

```ruby
def array_translate(array)

end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
```

## Solution

```ruby
def array_translate(array)
  # create a string to be returned, set to empty 
  new_str = ""

  i = 0
  while i < array.length
    # grab first element
    ele = array[i]
    # grab 2nd element
    num = array[i + 1]
    # concat to our empty string
    new_str += ele * num

    # iterate by 2 to skip every other element (provides grouping)
    i += 2
  end
  
  return new_str
end
```