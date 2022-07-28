def skipIt(array):
    skip = []
    index = 0
    while index < len(array):
        skip.append(array[index])
        index += array[index]
    return skip


print(skipIt([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]))
