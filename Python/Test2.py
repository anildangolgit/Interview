class Solution:
    def __init__(self):
        self.name=None
        self.email=None
        
    @property
    def name(self,val):
        self._name=val
    @property
    def email(self,val):
        self._email=val


if __name__=="__main__":
    s=Solution()
    s.name="Anil Dangol"
    print(s.name)