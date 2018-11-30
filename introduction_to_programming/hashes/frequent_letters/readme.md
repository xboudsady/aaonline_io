# Frequent Letters

Write a method `frequent_letters` that takes in a string and returns an array containing the characters that appeared more than twice in the string.

## Setup

```ruby
def frequent_letters(string)
    # create a hash table to store our string, with a default value
    crount = Hash.new(0)


end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
```

## Solution

```ruby
def frequent_letters(string)
    # create a hash table form our string with a default value
    count = Hash.new(0)

    # create an array to return the key name
    array = []

    # loop through our string to build our hash table
    string.each_char do |char|
        # increment our key value
        count[char] += 1
    end

    # loop through our hash to find keys greater than 2
    count.each do |key, val|
        if val > 2
            # shovel to our array
            array << key
        end
    end

    # return our array
    return array
end
```