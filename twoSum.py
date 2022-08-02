#input [2, 5, 3, 1, 0, 7, 11]
#output [3, 7]
# for i in range(len(input))
# inner_index = i + 1
# for j in range(inner_index, len(input) - 1)
# if input[i] + input[j] == 10
# return [input[i], input[j]]
# return "None"

def twoSum(array, target):
    for i in range(len(array)):
        inner = i + 1
        for j in range(inner, len(array) - 1):
            if array[i] + array[j] == target:
                return [array[i], array[j]]
    return "None"


print(twoSum([2, 5, 3, 1, 0, 7, 11], 10))

# def twoSum(array):
#     dict = {2, 5, 3, 1, 0, 7, 11}
#     for i in array:
#         if 10 - i == 7 is in dict:
#             return [i, dict]
