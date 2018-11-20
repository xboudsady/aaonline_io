def greatest_common_factor(number1, number2)
    biggest_common_factor = 0
  
    # If either number is 0, return nil because anything divided by 0 is undefined
    if number1 <= 0 || number2 <= 0
      return nil
    end
  
    # set the upper limit for the while loop to be the smaller number
    if number1 <= number2
      upper_limit = number1
    else
      upper_limit = number2
    end
  
    # Initialize with 1 as the common factor and check to see if it divides evenly
    i = 1
  
    # Set the while loop to increment until it gets to the upper_limit
    while i <= upper_limit
  
      # If i divides evenly by both numbers and is bigger than the current
      # biggest_common_factor, set it as the new biggest_common_factor
      if (number1 % i == 0 && number2 % i == 0) && (i > biggest_common_factor)
        biggest_common_factor = i
      end
  
      # increment i to check if the next (bigger) number divides evenly
      i += 1
    end
  
    return biggest_common_factor
  end
  
  puts greatest_common_factor(3, 9) # 3
  puts greatest_common_factor(16, 24) # 8
  puts greatest_common_factor(3, 5) # 1