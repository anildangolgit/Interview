
def sum67(nums):
  sum=0
  six_flag=False
  seven_flag=False
  for i in range(len(nums)):
    if nums[i]==6:
      six_flag=True
    elif nums[i]==7 and six_flag==True:
      six_flag=False
    elif six_flag==False:
      sum=sum+nums[i]
  return sum 
'''test1: no 6 and 7'''
print(sum67([6, 7, 1, 6, 7, 7]))

def sum67_stack(nums): '''does not work in all the test cases
  mystack=[]
  sum=0
  for i in range(len(nums)):
    if nums[i]==6:
      mystack.append(6)    
    elif nums[i]==7 and len(mystack)>0:
      mystack.pop()
    elif len(mystack)==0:
      sum+=nums[i]
  return sum
print(sum67_stack([6, 7, 1, 6, 7, 7]))



