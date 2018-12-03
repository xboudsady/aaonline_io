# Whisper Words

Write a method `whisper_words` that takes in an array of words and returns a new array containing a whispered version of each word. See the examples. Solve this using map :).

## Setup

```ruby
def whisper_words(words)

end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
```

## Solution

```ruby
def whisper_words(words)
  # use map to create a new array output
  return words.map do |word|
    # downcase method
    word.downcase + "..."
  end

end
```