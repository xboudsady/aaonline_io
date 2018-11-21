# Number of Repeated Letters

Write a method that takes in a string and returns the number of letters that appear more than once in the string. You may assume the string contains only lowercase letters. Count the number of letters that repeat, not the number of times they repeat in the string.

## Setup

```ruby
def num_repeats(string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")
```



## Solution

1. Create a hash called 'count' to store each unique letter and its count.

2. Compare each letter against the rest of the letters in the string by incrementing idx1 and idx2.

* string[0] == string[1] a == a?
* string[0] == string[2] a == a?
* string[1] == string[2] a == a?

3. If it repeats, count +=1 and store it in the hash. 
* count[string[0]] += 1 => count = {'a' => 3}

4. Count the number of key-value pairs in the count hash by using count.length and return that value.

```ruby
def num_repeats(string)
  count = Hash.new 0

  # outer loop
  idx1 = 0
  while idx1 < string.length  # 0 < 3

    # inner loop -- starts at 1, to compare in our loop
    idx2 = idx1 + 1   # 0 + 1 = 1
    while idx2 < string.length  # 1 < 3
      # finding a match between the two index
      if string[idx1] == string[idx2]   # string[0] == # string[1]
        count[string[idx1]] += 1  # count[string[0]] += 1 => count = {'a' => 3}
      end

      idx2 += 1 # inner loop increment
    end

    idx1 += 1 # outer loop increment
  end

  # Count the number of key-value pairs in the count hash by using count.length and return that value
  repeat_letter_counts = count.length

  return repeat_letter_counts

end

puts num_repeats('abdbc') # 1
puts num_repeats('aaa') # 1
puts num_repeats('abab') # 2
puts num_repeats('abcde') # 0
```