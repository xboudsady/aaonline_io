# Vowel Cipher

Write a method `vowel_cipher` that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

## Setup

```ruby
def vowel_cipher(string)


end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
```

## Solution

```ruby
def vowel_cipher(string)
    # create a variable to hold string characters
    vowels = "aeiou"

    # split string to an array of characters
    # then use map() on newly created array
    new_chars = string.split("").map do |char|
        # check if the char is in the vowel string
        if vowels.include?(char)
            # get old index number from vowel strings "aeiou"
            old_index = vowels.index(char)
            # shift our nex index 1 over
            # use % to take care of word wrapping
            new_index = (old_index + 1) % vowels.length
            # the new value from our index position
            vowels[new_index]
        else
            # if not a vowel, do nothing
            char
        end
    end

    return new_chars.join("")
end
```