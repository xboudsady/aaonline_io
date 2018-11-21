# Instructions

This is a practice coding challenge for the technical interview. It contains problems of similar difficulty to the actual interview questions, but will not be graded. Feel free to take as much time as you want, but know that to be adequately prepared, you should be able to complete this within 45 minutes.

When taking the practice coding challenge you will not be permitted to use a Repl as we have been using in the course practice problems. You will be given only a basic online text editor so practice similarly or use the textarea below.

The exercise is described with Ruby or Python in mind. However, you may answer it in any programming language you are most familiar with. Please do not write pseudocode.

# lucky_sevens?

Write a function `lucky_sevens?(numbers)`, which takes in an array of integers and returns true if any three consecutive elements sum to 7.

```ruby
lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7 
lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7 
lucky_sevens?([7,7,7,7]) == false 
lucky_sevens?([3,4,3,4]) == false
```

Make sure your code currectly checks for edge cases (i.e. the first and last elements of the array).

### Solution

```ruby
def lucky_sevens?(numbers)
  
  # if less than 3 elements, then this challeng is not possible
  if numbers.length < 3
    return "not possible"
  end

  # because we know there are at least 3 elements we can
  # start the loop at the 3rd element in the array (i = 2)
  # and check it along with the two previous elements (i - 1) and i - 2

  for i in (2...numbers.length)
    if (numbers[i] + numbers[i - 1] + numbers[i -2]) == 7
      return true
    end
  end

  # if loop is finished and no elements summed to 87
  return false

end
```


# oddball_sum

Write a function `oddball_sum(numbers)`, which takes in an array of integers and returns the sum of all the odd elements.

```ruby
oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9 
oddball_sum([0,6,4,4]) == 0 
oddball_sum([1,2,1]) == 2
```

### Solution

```ruby
def oddball_sum(numbers)
  odd_nums  = []
  sum = 0

  # extract all the odd number
  i = 0
  while i < numbers.length
    if (numbers[i] % 2 != 0)
      odd_nums << numbers[i]  # append those number to array
    end

    i += 1
  end

  # loop through new array
  j = 0
  while j < odd_nums.length
    # incrment sum, base on the value of array index
    sum += odd_nums[j]

    j += 1
  end

  # return sum
  return sum
end
```

# disemvowel

Write a function `disemvowel(string)`, which takes in a string, and returns that string will all the vowels removed. Treat "y" as a consonant.

```ruby
disemvowel("foobar") == "fbr" # => "fbr"
disemvowel("ruby") == "rby" # => "rby"
disemvowel("aeiou") == ""   # => ""
```
### Solution

```ruby
def disemvowel(string)
  # split our string into an array
  arr = string.split("")  # ["f", "o", "o", "b", "a", "r"]

  # create a variable to sore our letters
  no_vowels = []

  # loop through our array
  i = 0
  while i < arr.length
    # locate any vowels letter
    if !(arr[i] == "a" || arr[i] == "e" || arr[i] == "i" || arr[i] == "o" || arr[i] == "u")
      # non vowels characters gets pushed into the array
      no_vowels << arr[i]
    end

    i += 1  # increment loop
  end

  # return our vowels with a join
  return no_vowels.join("")
end
```