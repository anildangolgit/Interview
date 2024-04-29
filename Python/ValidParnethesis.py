class Solution:
    def isValid(self, s: str) -> bool:
        stack=[]
        counter=0
        
        mapping={'(':')','{':'}','[':']'}
        for char in s:
            if char in ('(','{','['):
                stack.append(char)
                counter+=1
            if char in (')','}',']'):
                val=stack.pop()
                if mapping[val]==char:
                    counter-=1
        if counter==0:
            return True
        else:
            return False

if __name__=="__main__":
      S=Solution()
      print(S.isValid("()"))