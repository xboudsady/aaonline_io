# Select Long Words

Write a method `select_long_words(words)` that takes in an array of words and returns a new array containing all of the words of the original array that are longer than 4 characters.

## Setup

```ruby
def select_long_words(words)

end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
```

## Solution

```ruby
def select_long_words(words)
  # create an array to store our words to be returned
  results = []

  # loop through to find words in our array
  i = 0
  while i < words.length
    # find words what are longer than length of 4
    if words[i].length > 4
      # append our array of that word
      results << words[i]
    end

    i += 1
  end

  # return our array
  return results
end
```