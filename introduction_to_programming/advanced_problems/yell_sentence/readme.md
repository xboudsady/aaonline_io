# Yell Sentence

Write a method `yell_sentence` that takes in a sentence string and returns a new sentence where every word is yelled. See the examples. Use map to solve this.

## Setup

```ruby
def yell_sentence(sent)

end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"

```

## Solution

```ruby
def yell_sentence(sent)
  # make string into an array, split a the space
  words = sent.split(" ")

  # create new array to be returned
  new_sentence = []

  # map through the array
  words.map do |word|
    # shovel each word capitalize, and !
    new_sentence << word.upcase + "!"
  end

  # return our new array on a join
  return new_sentence.join(" ")
end
```