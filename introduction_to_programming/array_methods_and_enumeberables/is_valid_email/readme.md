# Is Valid Email

Write a method `is_valid_email` that takes in a string and returns a boolean indicating whether or not it is a valid email address.

- For simplicity, we'll consider an email valid when it satisfies all of the following:
- contains exactly one `@` symbol
- contains only lowercase alphabetic letters before the `@`
 - contains exactly one `.` after the `@`

 ## Setup

 ```ruby
def is_valid_email(str)

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
 ```

 ## Solution

 ```ruby
def is_valid_email(str)
  # split at @ symbol to get 2 parts
  parts = str.split("@")
  
  # vaild email should only contain 2 parts after the split, before @ after
  if parts.length != 2
    return false
  end

  # make sure everyting in first array is alphabetic
  left = parts[0]
  right = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"

  # check if contains only alphabetic characters
  left.each_char do |char|
    # if NOT aprt of the alphabetic
    if !alpha.include?(char)
      return false
    end
  end

  # has exactly a single .
  # use split() method to split, length of 2 array indicate there is a single dot
  if right.split(".").length == 2
    return true
  else
    return false
  end

end
 ```