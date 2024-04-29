class LinkedList:
    def __init__(self,val,next):
        self.val=val
        self.next=next

dummy=LinkedList(2,None )

dummy.next=LinkedList(3)
dummy.next.next=LinkedList(4)
stack=[]
ret=LinkedList(None)
curr=dummy
while curr:
    stack.append(curr.val)
    curr=curr.next
print(stack)

while stack:
    ret.next=LinkedList(stack.pop())
curr=ret
while curr:
    print(curr.val)
    curr=curr.next


    



