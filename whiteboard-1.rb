# Write a function that takes in an array of numbers and returns its sum.

# input = [1, 2, 3, 4, 5]
# output = 15

# [1, 2, 3, 4, 5] index = 0, sum = 0 + 1 = 1
# [1, 2, 3, 4, 5] index = 1, sum = 1 + 2 = 3
# [1, 2, 3, 4, 5] index = 2, sum = 3 + 3 = 6
# [1, 2, 3, 4, 5] index = 3, sum = 6 + 4 = 10
# [1, 2, 3, 4, 5] index = 4, sum = 10 + 5 = 15

# def sum(array)
#   sum = 0
#   for num in array
#     sum += num
#   end
#   return sum
# end

# p sum([-1, 2, 3, 4, 5])

# Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

# input = ["apple", "berry", "potato", "aardvark"]
# output = 2

# Create variable called sum of a words. Iterate over input array, check the first character of every element, if the first character is a, add one to sum of a words. After iteration is complete, return sum of a words.

# def num_a_words(array)
#   sum = 0
#   for word in array
#     if word[0].downcase == "a"
#       sum += 1
#     end
#   end
#   return sum
# end

# p num_a_words(["apple", "berry", "potato", "aardvark", "Apple"])

# 7) Write a function that takes in an array of numbers and returns the two smallest numbers.
# input = [4, 7, 9, 0, 1]
# output = [0, 1]

# First iterate over the input array, with a variable, initially assigned to 0, reassigned every single time we come across an element that is less than the presently assigned value. Because we have to return the two smallest numbers, we need to run this iteration twice, while skipping over the index position of the smallest number in this second iteration.

# def smallest_two_numbers(array)
#   s_array = []
#   small_index = -1
#   2.times do
#     index = 0
#     small_champ = array[0]
#     while index < array.length
#       if index == small_index
#         index += 1
#       elsif array[index] < small_champ
#         small_champ = array[index]
#         small_index = index
#         index += 1
#       else
#         index += 1
#       end
#     end
#     s_array << small_champ
#   end
#   return s_array
# end

# p smallest_two_numbers([4, 7, 9, 0, 1])

# Write a function that takes in two strings and returns the longest common substring.

# string1 = "together"
# string2 = "ethereal"
# # output = "ether"

# # string1_substrings: "t", "o", "g", "e", "t", "h", "e", "r", "to", "tog", "toge", "toget", "togeth", "togethe", "together", "og", "oge", "oget", "ogeth", "ogethe", "ogether", "ge", "get", "geth", "gethe", "gether", "et", "eth", "ethe", "ether", "th", "the", "ther", "he", "her", "er"

# def longest_common_substring(string1, string2)
#   str1_index = 0
#   str2_index = 0
#   str1_source = string1.split("")
#   str2_source = string2.split("")
#   while str1_index < str1_source.length
#     inner_index = str1_index
#     substring_1 = ""
#     while inner_index - 1 < str1_source.length
#       substring_1 += str1_source[inner_index] + str1_source[inner_index + 1]
#       str1_source << substring_1
#       inner_index += 1
#     end
#     str1_index += 1
#   end
#   p str1_source
#   p str2_source
# end

# longest_common_substring(string1, string2)

#Write a function that takes in an array of numbers and returns the 3rd largest number.

# input = [9, 1, 2, 4, 5, 6, 3]
# output = [5]

#define a checkThird array = input. define a champion variable. define a champion index. set value of champion variable to the first value. check if element while in loop is greater than champion. if so, set champion to be equal to the element. set champion index to the index. after first iteration. remove element at index from checkThird. run another loop over checkThird, repeat steps in first iteration. run another loop over checkThird, repeat all steps execpt for removing element, this time return.

# def third_largest(integers)
#   checkThird = integers
#   champ = checkThird[0]
#   champ_index = 0
#   index = 0
#   while index < checkThird.length
#     if checkThird[index] > champ
#       champ = checkThird[index]
#       champ_index = index
#     end
#     index += 1
#   end
#   checkThird.delete_at(champ_index)
#   p champ
#   champ = checkThird[0]
#   champ_index = 0
#   index = 0
#   while index < checkThird.length
#     if checkThird[index] > champ
#       champ = checkThird[index]
#       champ_index = index
#     end
#     index += 1
#   end
#   checkThird.delete_at(champ_index)
#   p champ
#   champ = checkThird[0]
#   champ_index = 0
#   index = 0
#   while index < checkThird.length
#     if checkThird[index] > champ
#       champ = checkThird[index]
#       champ_index = index
#     end
#     index += 1
#   end
#   return champ
# end

# p third_largest([9, 1, 2, 4, 5, 6, 3])

def unique_character_optv(word)
  dict = {}
  index = 0
  while index < word.length
    if dict.has_key?(word[index]) == false
      dict[word[index]] = 1
      index += 1
    else
      dict[word[index]] += 1
      index += 1
    end
  end
  return dict.key(1)
end

def unique_character_opt(string)
  index = 0
  inner = 0
  unique = true
  while index < string.length
    while inner < string.length
      if index == inner
        inner += 1
      elsif string[index] == string[inner]
        unique = false
        break
      else
        inner += 1
      end
    end
    if unique == true
      return "#{string[index]} is the first unique character in #{string}."
    else
      unique = true
    end
    inner = 0
    index += 1
  end
end

def unique_character(string)
  index = 0
  inner = 0
  unique = true
  while index < string.length
    while inner < string.length
      if index == inner
        inner += 1
      elsif string[index] == string[inner]
        unique = false
        inner += 1
      else
        inner += 1
      end
    end
    if unique == true
      return "#{string[index]} is the first unique character in #{string}."
    else
      unique = true
    end
    inner = 0
    index += 1
  end
end

p unique_character_optv("rooster")
