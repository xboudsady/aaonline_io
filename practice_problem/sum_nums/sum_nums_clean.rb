def sum_nums(num)
    if num < 0
      return nil
    end
  
    result = 0
  
    i = 0
    
    while i <= num
      result = result + i
      i += 1
    end
  
    return result
  
  end
  
  #sum_nums(0) # nil
  #sum_nums(1) # 1
  #sum_nums(2) # 3
  sum_nums(3) # 6