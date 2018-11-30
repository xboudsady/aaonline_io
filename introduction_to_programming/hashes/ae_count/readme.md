# Ae Count

Write a method `ae_count` that takes in a string and returns a hash containing the number of a's and e's in the string. Assume the string contains only lowercase characters.

## Setup

```ruby
def ae_count(str)

end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
```

## Solution

```ruby
    # create a hash to be returned
    count = {
        "a" => 0,
        "e" => 0
    }

    # loop through the string
    str.each_char do |char|
        # look for character match for "a" or "e"
        if (char == "a") || (char == "e")
            # if found, increment count for hash key
            count[char] += 1
        end
    end

    # return our hash
    return count

```