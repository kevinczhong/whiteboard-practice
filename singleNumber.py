def singleNumber(array):
    count = {}
    for num in array:
        if num in count:
            count[num] += 1
        else:
            count[num] = 1
    return min(count, key=count.get)


print(singleNumber([4, 1, 2, 1, 2]))
