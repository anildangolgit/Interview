# https://leetcode.com/problems/longest-common-prefix/
# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"

flower 
f
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
 

# Constraints:

# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.
# Accepted
# 2M
# Submissions
# 4.9M
# Acceptance Rate
# 40.8%

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        prefixmap=[None]
        result=[]
        for s in strs:
            if prefixmap is None:
                prefixmap=s
            else:
                for i in range(len(s)):       
                    if s[i]==prefixmap[i]:
                        result.append(s[i])
                    else:
                        break
                    
                
