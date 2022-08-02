def arrayMesh(array):
    res = []
    for i in array:
        for j in array:
            if j == i:
                continue
            else:
                res.append(i + j)
    return res


print(arrayMesh(["a", "b", "c", "d"]))
