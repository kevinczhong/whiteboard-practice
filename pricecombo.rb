# require "smarter_csv"
require "csv"

table = CSV.parse(File.read("PriceComboInput.csv"), headers: true)
parray = table.by_col[1]
narray = table.by_col[0]

num_array = []
for price in parray
  price = price.delete!("$")
  price = price.to_f
  num_array << price
end

menu = {}
index = 0
while index < narray.length
  menu[narray[index]] = num_array[index]
  index += 1
end

def price_combo(hash, target)
  res = {}
  hash.each do |k, v|
    if (target % v).to_f.round(2) == 0
      res[k] = (target / v).round(2)
      p "yes"
    end
  end
  return res
end

# p price_combo(menu, 15.05)

nums = 2
num_array = [2.15, 2.15, 2.15, 2.15, 2.15, 2.15, 2.15, 2.75, 2.75, 2.75, 2.75, 2.75, 3.35, 3.35, 3.35, 3.35, 3.55, 3.55, 3.55, 3.55, 4.20, 4.20, 4.20, 5.80, 5.80]
while nums <= 7
  # puts "combination a : #{num_array.combination(nums).to_a}\n\n"
  combo = num_array.combination(nums).to_a
  # p combo
  for array in combo
    if array.sum.round(2) == 15.05
      p array
    end

    # if array.length == 5
    #   p array
    # end
    # p array.sum
    # p array
  end
  nums += 1
end

# p combo
# p num_array
