# Printing

There are a few ways to "print" output to the screen in Ruby. We have been using `puts` frequently in this course, but you can also use `print` and `p`. So many options! However, each method has some unique behavior. Let's step through them.

## print
`print` is the simplest method used to print data. It will do minimal formatting and not even add a new line at the end of the print:

```ruby
print "hello"
print "world"

# the code above would print:
# helloworld
```
To manually add a new line you can use the character `"\n"`. `"\n"` stands for `"new line."` This syntax is often used for other whitespace characters like tab `("\t")`.

```ruby
print "hello\n"
print "\tworld\n"

# the code above would print:
# hello
#   world
```

## puts

`puts` also prints data to the screen, but with some formatting, including adding an automatic new line after every puts:

```ruby
puts "hello"
puts "world"

# the code above would print:
# hello
# world
```

## p

`p` prints data to the screen with a new line but also gives information on type of data was printed:

```ruby
p "hello"
p 'goodbye'
p "42"
p 42

# the code above would print:
# "hello"
# "goodbye"
# "42"
# 42
```

Lets notice a few things above: + it doesn't matter if we wrap a string in double quotes or single quotes, it is still a string (in a later course we'll learn a slight distinction between the two). + we are able to differentiate the string `"42"` from the number `42` because the `p` method will actually print out the quotes that wrap the string data. Very cool!


# Strings Lecture 1


* length

```ruby
puts "Hello world!"             # => Hello world!
puts "Hello world!!@#$%^"       # => Hello world!!@#$%^
```
Using string object `length` method.

```ruby
puts "Hello.".length                  # => 5
puts "Hello world.".length            # => 11
```

Using string object indices value. Starts at index 0

```ruby
puts "Hello"[0]     # => H
puts "Hello"[1]     # => e
puts "Hello"[2]     # => l
```

String concatnation
```ruby
puts "Hello " + "world"                        # => Hello world
puts "Hello " + "world" + ", how are you?"     # => Hello world, how are you?
```

# String Lecture 3

Iterating through string with loops

```ruby
str = "hello"

puts str[0]         # => h
puts str[1]         # => e
puts str[4]         # => 4

i = 2

puts str[i]         # => l  same as str[2]

```

```ruby
str = "hello"

i = 0
while  i < str.length
    puts str[i]
    
    i += 1
end

# h
# e
# l
# l
# o
```

In a method to print string characters

```ruby
def printChars(str)
    i = 0
    while i str.length
        puts str[i]

        i += 1
    end
end

printChars("pizza")

# p
# i
# z
# z
# a
```

# Strings Quiz

What is the index of `g` in the string `"coding"`?
* 6
* **5**

What will `"coding".length` evaluate to?
* **6**
* 5

What will `"coding"[2]` evaluate to?
* i
* **d**
* o

What will `"Hey" + "Programmers"` evaluate to?
* 42
* **"HeyProgrammers"**
* That is not valid code

What will `"Hey-Programmers".length < 5` evaluate to?
* **false**
* true
* 10
* That is not valid code


# Strings Exercise

Write 3 expressions using each of string operations: `+` (concatenation), `.length`, and `[]` (indexing) Print out the result of your expressions using `puts`. Be sure to test your work by running your code!

```ruby
# Example:
puts "Hello " + "World"

# Write 3 more expressions below:

puts "Hello " + "Programmers!"              # => Hello Programmers!
puts "How long is the length".length        # => 22
puts "Hello"[0]                             # => H
```