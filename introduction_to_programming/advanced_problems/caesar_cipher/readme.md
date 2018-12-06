# Caesar Cipher

Write a method `caesar_cipher` that takes in a string and a number. The method should return a new string where every character of the original is shifted `num` characters in the alphabet.

## Setup

```ruby
# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)

end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
```

## Solution

```ruby
def caesar_cipher(str, num)
    # create a variable to hold our alphabet char
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    # create a string variable to be returned
    new_str = ""

    str.each_char do |char|
        # get the index position
        old_idx = alphabet.index(char)

        # we shift the index by adding num
        new_idx = old_idx + num

        # The new character gets assign a new index in our string of alphabet char
        # use % 26 to handle z character, 
        new_char = alphabet[new_idx % 26]

        # add the new character with new position to our string
        new_str += new_char
    end

    # return our string
    return new_str
end
```