# Write the solutions to each problem here!

# 1

numbers = [1, 2, 4, 2]
doubled_numbers = []
numbers.map { |number| doubled_numbers << number * 2 }
p doubled_numbers

# 2

items = [
  { id: 1, body: "foo" },
  { id: 2, body: "bar" },
  { id: 3, body: "foobar" },
]
ids = []
items.map { |item| ids << item[:id] }

p ids

# 3

fruits = [
  { "name" => "apple", "color" => "red" },
  { "name" => "banana", "color" => "yellow" },
  { "name" => "grape", "color" => "purple" },
]
hash = []
fruits.map { |fruit| hash << [fruit["name"], fruit["color"]] }
hash = hash.to_h

p hash

# 4

# 5
def reverse_a_string(string)
  rev = ""
  index = string.length - 1
  while index >= 0
    rev = rev + string[index]
    index = index - 1
  end
  return rev
end

p reverse_a_string("string")

# 5
def find_longest_word(string)
  str_array = string.split
  str_array.sort! { |a, b| b.length <=> a.length }
  return str_array[0]
end

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
