import UIKit

/*A palindrome is a word, phrase, number, or other sequence of characters which reads the same backwards and forwards. Can you determine if a given string, s , is a palindrome?
To solve this challenge, we must first take each character in , enqueue it in a queue, and also push that same character onto a stack. Once that's done, we must dequeue the first character from the queue and pop the top character off the stack, then compare the two characters to see if they are the same; as long as the characters match, we continue dequeueing, popping, and comparing each character until our containers are empty (a non-match means s isn't a palindrome).
Write the following declarations and implementations:
1.Two instance variables: one for your stack, and one for your queue.
2.A void pushCharacter(char ch) method that pushes a character onto a stack.
3.A void enqueueCharacter(char ch) method that enqueues a character in the queue instance variable.
4.A char popCharacter() method that pops and returns the character at the top of the stack  instance variable.
5.A char dequeueCharacter() method that dequeues and returns the first character in the queue  instance variable
 s is composed of lowercase English letters.
 If your code is correctly written and s is a palindrome, the locked stub code will print "The word, s, is a palindrome."
 otherwise, it will print "The word, s, is a not palindrome."
 Change Theme

 */
import Foundation

class Solution {
    fileprivate var stack: [Character] = []
    fileprivate var queue: [Character] = []

    
  //Write your code here
    func pushCharacter(ch:Character) {
        stack.append(ch)
    }
    
    func enqueueCharacter(ch:Character){
        queue.append(ch)
    }
    
    func popCharacter() -> Character {
        return stack.popLast()!
    }
    
    func dequeueCharacter()-> Character{
        return queue.removeFirst()
    }

}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
