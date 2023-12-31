import Foundation

// https://www.youtube.com/watch?v=F6LjiyEAYsQ

public class LinkedListNode<T> {
    public var value: T
    public var next: LinkedListNode<T>?
    public weak var previous: LinkedListNode<T>?

    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode

    private var head: Node<T>?
    private var tail: Node<T>?

    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node<T>? {
        return head
    }

    public var last: Node<T>? {
        return tail
    }

    public func append(_ value: T) {
        let newNode = Node(value: value)

        if let tailNode = tail {
            newNode.previous = newNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }

    public func nodeAt(index: Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }

    public func remove(node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next

        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev

        if next == nil {
            tail = prev
        }

        node.previous = nil
        node.next = nil

        return node.value
    }

    public func removeAll() {
        head = nil
        tail = nil
    }
}
