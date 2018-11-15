def factorial(n)
    if n < 0 
      return nil
    end
  
    result = 1
  
    while n > 0
      result = result * n
      n -= 1
    end
  
    return  result
  end
  
  factorial(3) # --> 6