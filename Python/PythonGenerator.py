from re import I


def testgen():
    i=0
    while i<19:
        i+=1
        yield i

print(next(testgen()))
print(next(testgen()))
