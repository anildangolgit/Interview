# https://leetcode.com/problems/palindrome-number/
# Given an integer x, return true if x is a 
# palindrome
# , and false otherwise.

 

# Example 1:

# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.
# Example 2:

# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:

# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
class Solution:
    def isPalindrome(self, x: int) -> bool:
        reverse=0
        original=x
        i=0
        while x>=10:
            remainer=x%10
            x=x//10
            reverse=reverse+10**i
            i=i+1
        reverse=reverse+10**i
        return reverse==original

s=Solution
print(s.isPalindrome(101))