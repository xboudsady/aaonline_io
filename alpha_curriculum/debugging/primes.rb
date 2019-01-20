require 'byebug'

def prime?(num)
    debugger # drops us into the debugger right after this point

    (2...num).each do |idx|
        if num % idx == 0
            return false
        end
    end
end
