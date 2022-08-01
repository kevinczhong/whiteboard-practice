def largestProduct(nums):
    prod = []
    for i in range(len(nums)):
        j = i + 1
        for j in range(j, len(nums) - 1):
            prod.append(nums[i] * nums[j])
    champ = prod[0]
    for k in prod:
        if k > champ:
            champ = k
    return champ


print(largestProduct([5, -2, 1, -9, -7, 2, 6]))
