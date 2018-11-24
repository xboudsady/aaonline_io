# Yell

Write a method `yell(words)` that takes in an array of words and returns a
new array where every word from the original array has an exclamation point after it.

## Setup

```ruby
def yell(words)
	
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
```

## Solution

```ruby
def yell(words)
    # create a variable to be returned
    results = []

    i = 0
    while i < words.length
        # append index value string with !
        results << words[i] + "!"

        i += 1
    end

    # return our array of modified strings
    return results
end
```