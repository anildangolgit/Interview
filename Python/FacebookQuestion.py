''' Complete a function that returns a list containing all the mismatched words (case sensitive)
 between two given input strings
 # - string 1 : "Firstly this is the first string"
# - string 2 : "Next is the second string"
#
# - output : ['Firstly', 'this', 'first', 'Next', 'second']  '''

string1='Firstly this is the first string'      
string2= 'Next is the second string'
string1_split=set(string1.split())
string2_split=set(string2.split())
intersected_string=string1_split.intersection(string2_split)
print((string1_split-intersected_string).union(string2_split-intersected_string))

result_set=set()
'''another way of doing it'''
for word in string1_split:
    if word not in string2_split:
        result_set.add(word)
for word in string2_split:
    if word not in string1_split:
        result_set.add(word)
print(sorted(result_set,reverse=True))



