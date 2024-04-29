def findMaximumCount(input_data):
    temp={}
    max_val=None
    max_key=None
    for i in input_data:
        if i in temp:
            temp[i]+=1
        else:
            temp[i]=1
    for k,v in temp.items():
        if max_val is None:
            max_val=v
            max_key=k
        elif max_val<v:
            max_val,max_key=v,k
    return max_key

if "__name__"=="__main__":
    print(findMaximumCount([2,2,3,4,1,3,5]))
    