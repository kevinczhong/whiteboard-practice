def firstDup(string):
    dups = {}
    for letter in string:
        if letter not in dups:
            dups[letter] = 1
        else:
            return letter
    return "No duplicates"


print(firstDup("abcdefghhijkkloooop"))
