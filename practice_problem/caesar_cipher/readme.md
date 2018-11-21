# Caesar Cipher

Write a method that takes in an integer `offset` and a string. Produce a new string, where each letter is shifted by `offset`. You may assume that the string contains only lowercase letters and spaces.

## Setup
```ruby
def caesar_cipher(offset, string)
 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #caesar_cipher")
puts("===============================================")
    puts(
      'caesar_cipher(3, "abc") == "def": ' +
      (caesar_cipher(3, 'abc') == 'def').to_s
    )
    puts(
      'caesar_cipher(3, "abc xyz") == "def abc": ' +
      (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
    )
puts("===============================================")
```
## Solution
```ruby
# When shifting "z" by three letters, wrap around to the front of the alphabet to produce the letter "c". You may want to use the % modulo operation to handle wrapping of "z" to the front of the alphabet.

# You'll want to use String's 'ord' method and Integer's 'chr' method. 'ord' converts a letter to an ASCII number code. 'chr' converts an ASCII number code to a letter.

# You may look at the ASCII printable characters chart: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters

# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to 'z' having code 122.

def caesar_cipher(offset, string)
  words = string.split(" ")   # split string into words, - to an array

  # outter loop through our words array
  word_i = 0
  while word_i < words.length  # to go through each word in the string
    word = words[word_i]  # set current word

    # inner loop through our individual word from our array created
    letter_i = 0
    while letter_i < word.length # to go through each letter in each word
      # set the current letter to its ASCII character and subtract the ASCII value of "a"
      char_i = word[letter_i].ord - "a".ord   # "a".ord == 97

      # determine where the offset occurs in the aplphabet
      new_char_i = (char_i + offset) % 26   # %26 to wrap the letter to the front of the alphabet (there are 26 letters in the alphabet)

      # set new current letter (in ASCII value) in regards to the offset value specified
      # and convert it to a normal letter
      word[letter_i] = ("a".ord + new_char_i).chr

      # increment inner loop
      letter_i += 1
    end

    # increment outer loop
    word_i += 1
  end

  return words.join(" ") # join all the words together to form a new string
end


puts caesar_cipher(3, 'abc') # "def"
puts caesar_cipher(3, 'abc xyz') # "def abc"
```