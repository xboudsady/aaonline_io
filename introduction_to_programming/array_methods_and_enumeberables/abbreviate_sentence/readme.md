# Abbreviate Sentence

Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

## Setup

```ruby
def abbreviate_sentence(sent)

end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
```

## Solution

```ruby
def abbreviate_sentence(sent)
  # split the sentence at the space into an array
  arr = sent.split(" ")
  # create an array to store new words
  new_words = []

  # Loop through the array of words
  arr.each do |word|
    if word.length > 4
      # if word length is greater than 4, we run the abbreviate_word() helper function
      new_word = abbreviate_word(word)
      # Append the ne_word to our array
      new_words << new_word
    else 
      # if lenght less than 4, do nothing
      new_words << word
    end
  end

  # return our new_words array and join at space
  return new_words.join(" ")

end


# create a helper function to take out the vowels

def abbreviate_word(word)
  vowels = "aeiou"
  no_vowels = ""

  word.each_char do |char|
    # use the string.include?() method to find characters
    # use the ! to find characters NOT a vowels
    if !vowels.include?(char)
      # concat our no_vowels string with characters not a contained in vowels string
      no_vowels += char
    end
  end
  # return the modified word
  return no_vowels
end
```