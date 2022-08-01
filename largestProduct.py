def largestProduct(nums):
    champ = (nums[0] * nums[1])
    for i in range(len(nums)):
        j = i + 1
        for j in range(j, len(nums) - 1):
            if nums[i] * nums[j] > champ:
                champ = nums[i] * nums[j]
    return champ


print(largestProduct([5, -2, 1, -9, -7, 2, 6]))
