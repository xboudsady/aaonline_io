# Last Index

Write a method `last_index` that takes in a string and a character. The method should return the last index where the character can be found in the string.

## Setup

```ruby
def last_index(str, char)

end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7
```

## Solution

```ruby
# start at the end of the word length
  i = str.length - 1

  # loop starting for the end
  while i >= 0
    if str[i] == char
      # return the first instance of char found
      return i
    end
    # move toward the 0 index
    i -= 1
  end
```