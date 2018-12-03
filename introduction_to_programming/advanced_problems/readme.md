# Advanced Problems

## Map & Select Lecture 1

* Array-Giving Enumerables
* `map()`
* `select()`

Modifying the existing array using the traditional `each` method

```ruby
arr = ["a", "b", "c", "d"]

arr.each { |ele| new_arr << ele.upcase + "!" }

print new_arr       # => ["A!", "B!", "C!", "D!"]        
```
Modifying the array using the new `map` method. `map` returns a new array

```ruby
arr = ["a", "b", "c", "d"]

new_arr arr.map { |ele| ele.upcase + "!" }

print new_arr       # => ["A!", "B!", "C!", "D!"] 
```

```ruby
arr = ["a", "b", "c", "d"]

new_arr arr.map { |ele| ele.upcase + ele.upcase }

print new_arr       # => ["AA", "BB", "CC", "DD"] 
```


Using the traditionale `each` method.

```ruby
nums = [1,2,3,4,5,6]

events = []

nums.each do |num|
    if num % 2 == 0
        evens << num
    end
end

print events            # => [2,4,6]
```

Using the new `select` method

```ruby
nums = [1,2,3,4,5,6]
evens = nums.select { |ele| ele % 2 == 0 }

print events        # => [2,4.6]
```

## Map & Select Lecture 2

* Array-Giving Enumerables

```ruby
arr = ["apple", "bootCAMP", "caRrot", "DaNice"]

new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase }

print new_arr       # => ["Apple", "Bootcamp", "Carrot", "Dance"]
```

The last line in the code blocks gets returned as an array.

```ruby
arr = ["apple", "bootCAMP", "caRrot", "DaNice"]

new_arr = arr.map do |ele|
            first_char = ele[0].upcase
            rest = ele[1..-1].downcase
            first_char + rest
        end

print new_arr   # => ["Apple", "Bootcamp", "Carrot", "Dance"]
```

Using `map.with_index`

```ruby
arr = ["apple", "bootCAMP", "caRrot", "DaNice"]

new_arr = arr.map.with_index do |elem, i|
            first_char = ele[0].upcase
            rest = ele[1..-1].downcase
            new_word = first_char + rest
            new_word * i
        end

print new_arr   # => ["", "Bootcamp", "CarrotCarrot", "DanceDanceDance"]
```