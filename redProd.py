def redProd(array):
    if not array:
        return array
    prod = 1
    for num in array:
        prod *= num
    return prod


print(redProd([1, 2, 3, 4]))
