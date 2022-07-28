def revArray(array):
    rev = []
    end = len(array) - 1
    for i in range(end, -1, -1):
        rev.append(array[i])
    return rev


print(revArray([1, 2, 3, 4, 5]))
