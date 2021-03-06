# Time Conversion

Write a method that will take in a number of minutes, and returns a string that formats the number into `hours:minutes`.

## The Setup

```ruby
def time_conversion(minutes)
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
```

## The Solution

```ruby
def time_conversion(minutes)
  # Track how many hours
  hours = 0

  # Loop through minutes to count how many times we get 60 minutes 
  while minutes >= 60
    # Each loop add 1 to the hours variable
    hours += 1
    # Deduct 60 after 1 hour has been added, we decrement unitl no more hour can be added
    minutes -=60
  end

  # Now we handle to string format

  # If the value is less than 10, (single digit)
  if minutes < 10
    # We concat a string '0' to our single digit to a new variable
    minutes_s = "0" + minutes.to_s
  else
    # If no single digit, we convert the minutes to a string to our new variable
    minutes_s = minutes.to_s
  end

  # Return the hours in string format, and concat with our minutes_s variable
  return hours.to_s + ":" + minutes_s

end

#time_conversion(150) # '2:30'
time_conversion(360) # '6:00'
```