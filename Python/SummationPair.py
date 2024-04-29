# Given a list of numbers [1,2,3,4,5,6,7,8,9], print all the pairs for which the summation of index positions is equal to 10

# [1,2,3,4,5,6,7,8,9]
# 0,1,2,3,4,5,6,7,8
# 2,8
# 3,7
# 4,6
# 0+8
# 1+2
# 2+8

# Test case 1
# input=[1,2,3] target=1
#     0   1 2

# output 1,2


def findSummationPairwithLoop(nums,target):
    result=[]
    for i in range(len(nums)):
        for j in range(i+1,len(nums),1):
            if i+j==target:
                # result.append([nums[i],nums[j]])
                result.append([i,j])
    return result

def findSummationPairwithLoopHash(num_arr, pair_sum):
    sums = []
    hashTable = {}

    for i in range(len(num_arr)):
        complement = pair_sum - num_arr[i]
        if complement in hashTable:
            print("Pair with sum", pair_sum,"is: (", num_arr[i],",",complement,")")
        hashTable[num_arr[i]] = None

# Driver Code
if __name__=="__main__":
        print(findSummationPairwithLoopHash([1,2,3,4,5,6,7,8,9],10))




