'''Given a list of words, can you find out the frequency of each word?'''
def findWordFrequency(words):
    frequency={}
    for word in words:
        if word in frequency:
            frequency[word]+=1
        else:
            frequency[word]=1
    return frequency


if __name__=="__main__":
    print(findWordFrequency(['Hello','Hello','This']))
