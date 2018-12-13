# Same Char Collapse

Write a method `same_char_collapse` that takes in a string and returns a collapsed version of the string. To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters. If there are multiple pairs that can be collapsed, delete the leftmost pair. For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

## Setup

```ruby
def same_char_collapse(str)

end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
```

## Solution

```ruby
def same_char_collapse(str)
  collapsible = true

  while collapsible
    # set to initial false
    collapsible = false

    # split the string to an array
    chars = str.split("")

    # iterate through the array
    chars.each.with_index do |char, i|
      # checking if current index and next index is the same
      if chars[i] == chars[i + 1]
        # if a match is found, we can delete by assigning empty string in the array
        chars[i] = ""
        chars[i + 1] = ""
        # flip our statement, so we can repeat this block of code
        collapsible = true
        # break after we deleted a pair
        break
      end
    end
    str = chars.join("")
  end

  # after no more collapse
  return str
end
```