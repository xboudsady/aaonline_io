def sum_nums(num)
    # End code num is less than 0
    if num < 0
      return nil
    end
  
    # Create a variable to return our value
    result = 0
  
    # Create a counter it iterate our loop
    i = 0
    
    # Loop through our values
    while i <= num
      # Add our counter value to existing results variable
      result = result + i
      # Increment by 1
      i += 1
    end
  
    # Return our Results
    return result
  
  end
  
  #sum_nums(0) # nil
  #sum_nums(1) # 1
  #sum_nums(2) # 3
  sum_nums(3) # 6