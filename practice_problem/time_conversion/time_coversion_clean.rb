def time_conversion(minutes)
    hours = 0
  
    while minutes >= 60
      hours += 1
      minutes -=60
    end
  
    if minutes < 10
      minutes_s = "0" + minutes.to_s
    else
      minutes_s = minutes.to_s
    end
  
    return hours.to_s + ":" + minutes_s
  
  end
  
  #time_conversion(150) # '2:30'
  time_conversion(360) # '6:00'