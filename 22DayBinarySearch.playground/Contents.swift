import UIKit

var str = "Hello, playground"
// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
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

    func getHeight(root: Node?) -> Int {
//        Any node has a height of 1
//        Height of an empty subtree is -1
//        Because the height of each node is 1 + the maximum height of its subtrees and an empty subtree's height is -1, the height of a single-element tree or leaf node is 0.
        return root == nil ? -1 : 1 + max(getHeight(root:root?.left), getHeight(root:root?.right))
    }


} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))
