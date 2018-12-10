# Double Letter Count

Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.

## Setup

```ruby
def double_letter_count(string)

end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
```

## Solution

```ruby
def double_letter_count(string)
    # create a variable to hold our count
    count = 0

    # iterate through string characters with index to find adjacent index
    string.each_char.with_index do |char, i|
        # increment if same characters is next index
        if char == string[i + 1]
            count += 1
        end
    end

    return count
end
```