import UIKit
// Level-Order Traversal (BFS)
// A level-order traversal of tree t is a recursive algorithm that processes the root, followed by the children of the root (from left to right), followed by the grandchildren of the root (from left to right), etc. The basic algorithm shown below uses a queue of references to binary trees to keep track of the subtrees at each level:
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d: Int) {
        data = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func levelOrder(root: Node?) {
        // Complete the function
        var queue = [Node]()
        queue.append(root!)

        while queue.count != 0 {
            let curr = queue.removeFirst()
            print("\(curr.data) ", terminator: "")

            if curr.left != nil {
                queue.append(curr.left!)
            }
            if curr.right != nil {
                queue.append(curr.right!)
            }
        }
    }
} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)
