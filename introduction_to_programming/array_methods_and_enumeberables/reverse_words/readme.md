# Reverse Words

Write a method `reverse_words` that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.

## Setup

```ruby
def reverse_words(sent)

end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
```

## Solution

```ruby
def reverse_words(sent)
  # split word into array
  words = sent.split(" ")
  # create new array to be returned
  new_words= []

  # loop through and use reverse() method to append array
  words.each { |word| new_words << word.reverse }
  
  # join the new array into a string
  new_sent = new_words.join(" ")

  # return new string
  return new_sent
end
```