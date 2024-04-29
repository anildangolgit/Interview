# https://leetcode.com/problems/move-zeroes/
# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Note that you must do this in-place without making a copy of the array.

 

# Example 1:

# Input: nums = [0,1,0,3,12]
#[1,0,0,3,12]

# Output: [1,3,12,0,0]
# Example 2:

# Input: nums = [0]
# Output: [0]
 

# Constraints:

# 1 <= nums.length <= 104
# -231 <= nums[i] <= 231 - 1

class Solution:
    def moveZeroes(self, nums):
        # using two pointer 
        p1=p2=0
        while p2<len(nums):
            if  (nums[p1]==0 and nums[p2]!=0):
                nums[p1],nums[p2]=nums[p2],nums[p1]
            if nums[p1]!=0:
                p1=p1+1
        return nums
        
s=Solution()
#print(s.moveZeroes([0,1,0,3,12]))
print(s.moveZeroes([1,0,1]))


            

        