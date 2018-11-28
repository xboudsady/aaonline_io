# Pig Latin Word

Write a method `pig_latin_word` that takes in a word string and translates the word into pig latin.

 - Pig latin translation uses the following rules:
 - for words that start with a vowel, add `'yay'` to the end
 - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add `'ay'`

 ## Setup

 ```ruby
def pig_latin_word(word)

end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
 ```

 ## Solution

 ```ruby
def pig_latin_word(word)
  # vowels string for refrence
  vowels = "aeiou"

  # if the words starts with a vowels, then add 'yay'
  if vowels.include?(word[0])
    return word + "yay"
  end

  # locate where the first vowel is
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      # substrin of characters that comes immediately before the vowel
      before_vowels = word[0...i]       # exclude the vowel itself, excluding
      after_vowels = word[i..-1]        # -1 refer to last position
      return after_vowels + before_vowels + "ay"
    end
  end

end
 ```