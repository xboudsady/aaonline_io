# Hashes

## Hashes Lecture 1 - Key Value Pairs

Data Structure - Hashes

`key => value` pairs

Hashes can store many different data types.

```ruby
my_hash = { "name" => "App Academy", "color" => "red", "age" => 5 }

puts my_hash            # { "name"=>"App Academy", "color"=>"red", "age"=>5 }

puts my_hash["name"]    # App Academy
puts my_hash["age"]     # 5

my_hash["color"] = "pink"
puts my_hash            # { "name"=>"App Academy", "color"=>"pink", "age" >5 }

my_hash["age"] += 1
puts my_hash            # { "name"=>"App Academy", "color" => "pink", "age"=>6 }
```

You can also store an `number` as a key to the hashes

```ruby
my_hash = { 
    "name" => "App Academy", 
    "color" => "red", 
    "age" => 5, 
    "isAwesome" => true,
    42 => "hello"
}

puts my_hash[42]        # "hello"
```

# Hahes Lecture 2 - Operations and Methods

```ruby
dog = {
    "name" => "Fido",
    "color" => "black",
    "age" => 3,
    "isHungry" => true,
    "enemies" => ["squirrel"]
}

dog["name"] = "Spot"
puts dog                # {"name"=>"Spot", "color"=>"black", "age"=>3, "isHungry"=>true, "enemies"=>["squirrel"]}

puts dog.length         # 5
```

```ruby
dog = {
    "name" => "Fido",
    "color" => "black",
    "age" => 3,
    "isHungry" => true,
    "enemies" => ["squirrel"]
}

puts["location"] = "NY"
puts dog     # {"name"=>"Spot", "color"=>"black", "age"=>3, "isHungry"=>true, "enemies"=>["squirrel"], "location"=>"NY"}

dog["age"] += 10
puts dog    # {"name"=>"Spot", "color"=>"black", "age"=>13, "isHungry"=>true, "enemies"=>["squirrel"], "location"=>"NY"}

print dog["enemies"]    # ["squirrel"]
print dog["enemies"] << "mailman"
puts dog    # {"name"=>"Spot", "color"=>"black", "age"=>13, "isHungry"=>true, "enemies"=>["squirrel", "mailman"], "location"=>"NY"}
```

`Keys` in hashes are unique. Check if key exist in hahses using `has_key?()` method. `has_value?` to check if key has a value

```ruby
dog = {
    "name" => "Fido",
    "color" => "black",
    "age" => 3,            
    "isHungry" => true,
    "enemies" => ["squirrel"]
}

dog.has_key?("color")          # true
dog.has_key?("location")       # false
dog.has_key?("Color")          # false              case sensitive

print dog.has_value?(3)        # true
print dog.has_value?(false)    # false

print dog.keys          # ["name", "color", "age", "isHungry", "enemies"]
print dog.keys[1]       # color
print dog.values        # ["Fido", "black", 3, true, "squirrel"]
```

## Why Hashes Lecture

Use cases between an array and a hash.

```ruby
# good array data
animals = ["dog", "cat", "fish", "bird"]

# not so good array data
person = ["Alvin", 100, "New York", "burgers", true]

puts person[0]  # Alvin

# better as a hash

better_person = {
    "name" => "Alvin",
    "age" => 100,
    "location" => "New York",
    "favoriteFood" => "burgers",
    "isHungry" => true
}

puts better_person["location"]  # New York"
```

## Iterating Hashes Lecture

* `.each`
* `.each_key`
* `.each_value`

```ruby
pizza = {
    "style" => "New York",
    "slices" => 8
    "diameter" => "15 inches"
    "topping" => ["mushrooms", "green peppers"],
    "is_tasty" => true
}

pizza.each do |k, v|
    puts k
    puts v
    puts "-----"
end
# style
# New York
# -----
# slices
# 8
# -----
# diameter
# 15 inches
# -----
# topping
# ["musthroom, "green peppers"]
# -----
# is_tasty
# true
# -----

pizza.each_key do |thing|
    puts thing
end
# style
# slices
# diameter
# topping
# is_tasty


pizza.each_value do |val|
    puts val
end
# New York
# 8
# 15 inches
# ["mushrooms", "green peppers"]
# true
```

## Counter Hash Lecture 1

* default value `nil`
* Hash.new(default)
* counter hash strategy

```ruby
my_hash = {
    "a" => 28
}

puts my_hash["b"] == nil        # true
```

```ruby
my_hash = Hash.new(0)       # setting default value

puts my_hash        # {}
puts my_hash("a")   # 0
puts my_hash("c")   # 0
```

Creating a hash with counter. Since the default value of our hash is `0` we can iterate through the index of the string character

```ruby
counter = Hash.new(0)

str = "bootcamp prep"

str.each_char { |char| counter[char] += 1 }

puts counter
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}
```

```ruby
counter = Hash.new(0)

str = "bootcamp prep"

str.each_char do |char|
    puts char
    counter[char] += 1
    puts counter
end

# b
# {"b"=>1}
# o
# {"b"=>1, "o"=>1}
# o
# {"b"=>1, "o"=>2}
# t
# {"b"=>1, "o"=>2, "t"=>1}
# c
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1}
# a
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1}
# m
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}
# 
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1, " "=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1}
# r
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1}
# e
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1, "e"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}
```

```ruby
my_hash = { "a" => 42, "b" => 10 }

char = "b"
print my_hash[char]   # 10
```

## Counter Hash Lecture 2

* `sort_by` method

```ruby
str = "mississippi river"

count = Hash.new(0)

str.each_char { |char| count[char] += 1}        # count[char] = 0

print count
# {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}

print count.sort_by { |key, val| val }
# [["e", 1], [" ", 1], ["v", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i",5]]

print count.sort_by { |key, val| key }
# [[" ", 1],["e", 1], ["i", 5], ["m", 1], ["p", 2], ["r", 2], ["s", 4], ["v", 1]]

sorted = count.sort_by { |key, val| val }

print sorted
# [["e", 1], [" ", 1], ["v", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i",5]]

print sorted[-1]
# ["i", 5]

print sorted[-1][0]
# i
```

## Nil Lecture

* Represents "nothing" or "empty"
* common appears as a default value

```ruby
my_array = ["a", "b", "c"]

print my_array[2]
# c
print my_array[3]
# nil

my_hash = { "name" => "bob", "age" => 0 }

p my_hash["name"]
# bob
p my_hash["location"]
# nil
```