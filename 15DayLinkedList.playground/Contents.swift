import Foundation
import UIKit

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

/* Task
 Complete the insert function in your editor so that it creates a new Node (pass data as the Node constructor argument) and inserts it at the tail of the linked list referenced by the head parameter. Once the new node is added, return the reference to the head node.
 Note: If the head argument passed to the insert function is null, then the initial list is empty */
func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    var head = head
    if head == nil {
        head = Node(data: data)
    } else {
        var currentNode: Node = head!
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next = Node(data: data)
    }
    return head!
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = 1

for _ in 0..<n {
    let element = 5
    head = insert(head: head, data: element)
}

display(head: head)
