# O Words

Write a method `o_words` that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution!

## Setup

```ruby
def o_words(sentence)

end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
```

## Solution

```ruby
def o_words(sentence)
  # use select to return a new array
  select_words = sentence.split.select do |word|
    # only return o words
    word.include?("o")
  end

  return select_words
end
```