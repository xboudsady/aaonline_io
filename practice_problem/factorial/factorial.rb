def factorial(n)
    # Check if factorial if less than 0, if true return nil
    if n < 0 
      return nil
    end
  
    # Create a variable to be return with starting value of 1 so it can be used in the loop below as a (n * 1) starting value
    result = 1
  
    # If arguement is greater than 1
    while n > 0
      # Re-assign value of 1 times its argument as a starting value
      result = result * n
  
      # Decrement by 1, to mulitple the next lower value (e.g. 3 * 2 * 1) - to end the loop
      n -= 1
    end
  
    # Return the final value
    return  result
    
  end
  
  factorial(3) # --> 6