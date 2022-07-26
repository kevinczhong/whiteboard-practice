def rnaTranscription(input):
    transcript = {"G": "C", "C": "G", "T": "A", "A": "U"}
    output = ""
    for letter in input:
        output += transcript[letter]
    return output


print(rnaTranscription("ACGTGGTCTTAA"))
