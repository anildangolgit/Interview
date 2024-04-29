class Node:

    def __init__(self,val):
        self.value=val
        self.next=None

class LinkedList:
    def __init__(self):
        self.headval=None

    def printList(self):
       root=self.headval
       result=''
       while root is not None:
           result=result+str(root.value)+'->'
           root=root.next

       result=result+'Null'
       print(result)

    def Insert(self,val):
        if self.headval==None:
            self.headval=Node(val)
            return
        root=self.headval
        while root.next is not None:
            root=root.next
        root.next=Node(val)
    
    def reverse(self):
        result=Node()

        


if __name__ == "__main__":
    L=LinkedList()
    L.Insert(5)
    L.Insert(7)
    L.Insert(10)
    L.printList()