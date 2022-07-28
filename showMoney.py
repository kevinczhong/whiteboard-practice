def showMoney(string):
    for char in string:
        if char == "$":
            return True
    return False


print(showMoney("abcdefghijklmnopqrstuvwxyz"))
