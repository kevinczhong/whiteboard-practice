def red_prod(array)
  if array == []
    return array
  end
  prod = 1
  for num in array
    prod *= num
  end
  return prod
end

p red_prod([1, 2, 3, 4])
