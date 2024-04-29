'''[[A],[A,B],[A,C],[B,D],[C,A]] -- Find the alphabet with highest neighbors?'''
temp=[['A'],['A','B'],['A','C'],['B','D'],['C','A']]
map={}
for i in temp:
    if len(i)==2:
        if i[0] in map.keys():
            map[i[0]]+=1
        else:
            map[i[0]]=0
        if i[1] in map.keys():
            map[i[1]]+=1
        else:
            map[i[1]]=0
maxval=None
maxkey=None

'''Get the maximum value
for key,val in map.items():
    if maxval==None:
        maxval=val
        maxkey=key
    else:
        if val>maxval:
            maxval=val
            maxkey=key'''
maxkey=min(map,key=map.get)
print(f'maximum neighborhood letter {maxkey}')
