def binsearch(array, target)
  first, last = 0, array.length - 1
  while first + 1 < last
    mid = (first + last) / 2
    if array[mid] <= target
      first = mid
    else
      last = mid
    end
  end

  if array[first] != target && array[last] != target
    if array[last] < target
      return last
    else
      return first
    end
  else
    if array[first] == target
      return first
    else
      return last
    end
  end
end

p binsearch([2, 3, 4, 5, 6], 3)

def linsearch(array, target)
  index = 0
  while index < array.length - 1
    if array[index] >= target
      return index
    end
    index += 1
  end
  return array.length - 1
end

p linsearch([2, 4, 5, 6], 1)
