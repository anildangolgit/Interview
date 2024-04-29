'''
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

Input: "A man, a plan, a canal: Panama"
Output: true
Example 2:

Input: "race a car"
Output: false
this is new comment
'''
class Solution:
    def isPalindrome(self, s: str) -> bool:
        forward_pointer=0
        reverse_pointer=len(s)-1

        while(forward_pointer<=reverse_pointer):
            if ord(s[forward_pointer].upper())>ord('Z'):
                forward_pointer+=1
                continue
            if ord(s[forward_pointer].upper())<ord('A'):
                forward_pointer+=1
                continue
            if ord(s[reverse_pointer].upper())>ord('Z'):
                reverse_pointer-=1
                continue
            if ord(s[reverse_pointer].upper())<ord('A'):
                reverse_pointer-=1
                continue
            if s[forward_pointer].upper()!=s[reverse_pointer].upper():
                return False
            else:
                forward_pointer+=1
                reverse_pointer-=1
        return True
if __name__ == "__main__":
    S=Solution()
    print(S.isPalindrome('race a car'))

                

        