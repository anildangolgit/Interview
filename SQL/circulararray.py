class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

def is_circular_linked_list(head):
    if head is None:
        return False

    slow = head
    fast = head.next

    while fast and fast.next:
        if slow == fast:
            return True
        slow = slow.next
        fast = fast.next.next

    return False