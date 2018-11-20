# Most Common Letter

Write a method that takes in a string. Your method should return the most common letter in the array, and a count of how many times it appears.

# Setup

```ruby
def most_common_letter(string)
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
```

# Solution

```ruby
def most_common_letter(string)
  # initialize most common letter and its count, set count with nil
  most_common_letter = nil
  most_common_letter_count = nil

  # go through every index in the string to set the current letter being evaluated
  index1 = 0
  while index1 < string.length   # 0 < 4
    # set variable within local scope
    letter = string[index1]   # letter = string[0] = a
    count = 0   # count = 0

    # 2nd loop, go through every index in the string and increment by 1 everytime
    # that letter (set in earlier 'index1' while loop) appears
    index2 = 0
    while index2 < string.length  # 3 < 4
      if string[index2] == letter # string[3] == a
        count += 1 # count = 2 (because string[0] & string[3] == a)
      end
      # increment 2nd loop
      index2 += 1
    end

    # overrides most_common_letter and its count if the new count is higher
    # results is given from our 2nd loop above
    if (most_common_letter_count == nil) || (count > most_common_letter_count)
      most_common_letter = letter
      most_common_letter_count = count
    end

    # increment our 1st loop
    index1 += 1
  end

  return [most_common_letter, most_common_letter_count]
end

print most_common_letter('abca') # ["a", 2]
print most_common_letter('abbab') # ["b", 3]
```