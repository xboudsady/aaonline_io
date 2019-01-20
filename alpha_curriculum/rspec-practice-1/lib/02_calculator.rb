def add(num1, num2)
    return num1.to_i + num2.to_i
end


def subtract(num1, num2)
    return num1.to_i - num2.to_i
end


def sum(arr)
    sum = 0

    arr.each do |i|
        sum += i
    end

    return sum
end


def multiply(*numbers)
    product = 1
    
    numbers.each do |i|
        product *= i
    end

    return product
end

def power(base, exponent)
    return base ** exponent
end

def factorial(n)
    if n == 0
        return 1
    end

    product = 1

    n.downto(1).each do |i|
        product *= i
    end

    return product
end