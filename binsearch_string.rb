def binsearch(array, target)
  letter_values = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26 }
  start = 0
  last = array.length - 1
  # p letter_values[array[4][0]]
  # p letter_values[target[0]]

  while start + 1 < last
    mid = (start + last) / 2
    if array[mid] == target
      return mid
    elsif letter_values[array[mid][0]] > letter_values[target[0]]
      last = mid
    else
      start = mid
    end
  end
  if array[start] == target
    return start
  end
  if array[last] == target
    return last
  end
  return -1
end

def binsearch_var(array, target)
  letter_values = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26 }
  start = 0
  last = array.length - 1
  # p letter_values[array[4][0]]
  # p letter_values[target[0]]

  while start + 1 < last
    mid = (start + last) / 2
    if array[mid] == target
      return mid
    elsif letter_values[array[mid][0]] > letter_values[target[0]]
      last = mid
    else
      start = mid
    end
  end
  if array[start] == target
    return start
  end
  if array[last] == target
    return last
  end
  return -1
end

p binsearch(["alpha", "bravo", "charlie", "hellion", "hello", "motel", "zebra"], "hello")
