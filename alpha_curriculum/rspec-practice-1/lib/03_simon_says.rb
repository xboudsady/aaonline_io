def echo(string)
    return string
end


def shout(string)
    return string.upcase
end


def repeat(string, times=2)
    words = Array.new(times, string)
    words.join(" ")
end