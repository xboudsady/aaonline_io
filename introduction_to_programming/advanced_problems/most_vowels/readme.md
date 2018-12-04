# Most Vowels

Write a method `most_vowels` that takes in a sentence string and returns the word of the sentence that contains the most vowels.

## Setup

```ruby
def most_vowels(sentence)

end

print most_vowels("what a wonderful life") #=> "wonderful"
```

## Solution

```ruby
# create a helper function to handle the vowel count

def vowel_count(word)
    # create a couter to track number of vowels found
    count = 0

    # create a variable to hold a string of vowel characters
    vowels = "aeiou"

    # loop through our word to find a vowel
    word.each_char do |char|
        # use the include() method
        if vowels.include?(char)
            count += 1
        end
    end

    return count
end


# Main Function

def most_vowels(sentence)
    # create a hash to hold word(key) and value(count) of vowels
    counts = {}

    # split the words into an array
    words = sentence.split

    # loop through our words arrauy
    words.each do |word|
        # create our hash, word as the "key", and the value is the count of vowels found
        counts[words] = vowel_count(word)
    end

    # sort our hash key, value pair, output is an array, smallest to largest
    sorted = counts.sort_by do |key, val|
        val
    end

    # return last item in the array
    return sorted[-1][0]
end


```