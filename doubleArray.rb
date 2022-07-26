def double_array(input)
  output = []
  for num in input
    output << num * 2
  end
  return output
end

p double_array([4, 2, 5, 99, -4])
