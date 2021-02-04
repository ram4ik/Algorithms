//
//  LinkedList.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 04.02.2021.
//

import Foundation

struct LinkedList<T> {
    var head: LinkedListNode<T>
    init(head: LinkedListNode<T>) {
        self.head = head
    }
}

indirect enum LinkedListNode<T> {
    
    case value(element: T, next: LinkedListNode<T>)
    case end
}

extension LinkedList: Sequence {
    func makeIterator() -> LinkedListIterator<T> {
        return LinkedListIterator(current: head)
    }
}

struct LinkedListIterator<T>: IteratorProtocol {
    var current: LinkedListNode<T>
    
    mutating func next() -> T? {
        switch current {
        case let .value(element, next):
            current = next
            return element
        case .end:
            return nil
        }
    }
}
