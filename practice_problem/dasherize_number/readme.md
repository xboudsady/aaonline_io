# Dasherize Number

Write a method that takes in a number and returns a string, placing a single dash before and after each odd digit. There is one exception: don't start or end the string with a dash.

## Setup

```ruby
def dasherize_number(num)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")
```

## Solution

```ruby
def dasherize_number(num)
  # Convert the input into a string
  string = num.to_s

  # Create an empty string
  new_num = ""

  # Loop through our string characters
  i = 0
  while i < string.length
    # Create a local variable with our current index value, and convert to an integer
    digit = string[i].to_i


    if i > 0
      # create a local variable with the previous value of first index - 1, to an integer
      previous_digit = string[i - 1].to_i

      # check if any of the two digits are odd number -- even number don't get dashes
      if (previous_digit % 2 == 1) || (digit % 2 == 1)
        # if true, we append the string with a dash
        new_num += "-"
      end
    end

    # concat the empty string with our string
    new_num += string[i]

    # increment our counter
  i += 1
  end

  # return our concated string value
  return new_num
end

puts dasherize_number(203) # 20-3
puts dasherize_number(303) # 3-0-3
puts dasherize_number(333) # 3-3-3
puts dasherize_number(3223) # 3-22-3
```