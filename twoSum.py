from itertools import permutations

#input [2, 5, 3, 1, 0, 7, 11]
#output [3, 7]
# for i in range(len(input))
# inner_index = i + 1
# for j in range(inner_index, len(input) - 1)
# if input[i] + input[j] == 10
# return [input[i], input[j]]
# return "None"

# def twoSum(array, target):
#     for i in range(len(array)):
#         inner = i + 1
#         for j in range(inner, len(array) - 1):
#             if array[i] + array[j] == target:
#                 return [array[i], array[j]]
#     return "None"


# print(twoSum([2, 5, 3, 1, 0, 7, 11], 10))

def twoSum(array, target):
    for i in range(len(array)):
        for perm in permutations(array, i):
            if sum(perm) == target:
                return perm
    return -1


print(twoSum([2.15, 2.75, 3.35, 3.55, 4.20, 5.80], 13.55))

# def twoSum(array):
#     dict = {2, 5, 3, 1, 0, 7, 11}
#     for i in array:
#         if 10 - i == 7 is in dict:
#             return [i, dict]
