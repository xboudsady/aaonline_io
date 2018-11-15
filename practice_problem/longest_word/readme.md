# Longest Word

Write a method that takes in a string. Return the longest word in the string. You may assume that the string contains only letters and spaces. You may use the String `split` method to aid you in your quest.

## The Setup 

```ruby
def longest_word(sentence)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")

```
## Solution

```ruby
def longest_word(sentence)
  # Split the sentence at he space
  array = sentence.split(' ')

  # Create a variable to store our virst value in from our new array
  longest = array[0]

  # Create a counter, starting at 1, since our longest variable has index 0
  i = 1

  # Loop through our array length
  while i < array.length
    # Compare our longest variable length
    if longest.length < array[i].length
      # if it's less than our current index, re-assign to our new index
      longest = array[i]
    end

    # Increment by 1 to move on to next index, to close out the loop
    i += 1
  end

  # Return or final value
  return longest;
end

longest_word('abc def abcde') # --> abcde
```