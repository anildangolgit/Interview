class Solution:
    def runningSum(self, nums):
        result=[None]*len(nums)
        result[0]=nums[0]
        for i in range(1,len(nums)):
            result[i]=result[i-1]+nums[i]
        return result
    

s=Solution()
print(s.runningSum([1,2,3,5]))