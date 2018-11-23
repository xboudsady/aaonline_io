# Loops

## Count E

Write a method `count_e(word)` that takes in a string word and returns the number of e's in the word

### Setup

```ruby
def count_e(word)

end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3
```

### Solution

```ruby
def count_e(word)
  # Create a variable `count` to be return with an intial value of `0`
  count = 0

  # Use a while loop to cyle through the string character to find the matching character `e`
  i = 0
  while i < word.length
    if word[i] == "e"
      # If character `e` is found, increment `count` by `1`
      count += 1
    end

    # Increment loop counter
    i += 1
  end

  # return our count
  return count
end


puts count_e("movie") # => 1
puts count_e("excellent") # => 3
```

--- 

## Count A

Write a method `count_a(word)` that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)

### Setup

```ruby
ef count_a(word)

end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3
```

### Solution

```ruby
def count_a(word)
  # create a variable to hold our character count
  count = 0

  # create a loop through our string word
  i = 0
  while i < word.length
    # find character match
    if word[i] == "a" || word[i] == "A"
      count += 1
    end

    i += 1  # increment loop
  end

  # return count value
  return count  
end
```