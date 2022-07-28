def altCaps(string):
    altString = ""
    for letter in range(len(string)):
        if letter % 2 != 0:
            altString += string[letter].upper()
        else:
            altString += string[letter]
    return altString


print(altCaps("hello, how are your porcupines today?"))
