//
//  LinkList.swift
//  数据结构算法
//
//  Created by CYAX_BOY on 2020/12/3.
// 链表

import Foundation
import UIKit

class LinkList: NSObject {
    var size: Int = 0
    var first: Node?
    
    //get方法 获取链表长度
    var count: Int {
        return size
    }

    //添加一个节点
    func add(node: Node) {
        guard size != 0 else {
            first = node
            size += 1
            return
        }
        let num = count
        guard let nod = indexOf(index: num - 1) else { return }
        let pre: Node = nod
        pre.next = node
        size += 1
    }
    //删除一个节点
    func deleteNode(index: Int) {
        guard index < count else { print("请输入小于链表个数的索引"); return }
        guard index >= 0 else { return }
        guard index > 0 else {
            //== 0
            let node = first
            first = node?.next
            size -= 1
            return
        }
        // 1...<index
        let willDeleteNode = indexOf(index: index)
        let pre = indexOf(index: index - 1)
        pre?.next = willDeleteNode?.next
        size -= 1
    }
    //插入一个节点
    func insertNode(index: Int,node: Node) {
        guard index <= count - 1 else {
            print("越界了")
            return
        }
        guard index != 0 else {
            first = node
            size += 1
            return
        }
        let pre = indexOf(index: index - 1)
        let cur = indexOf(index: index)
        pre?.next = node
        node.next = cur
        size += 1
    }
    //获取index的节点
    func indexOf(index: Int) -> Node? {
        guard index < count else {
            print("越界了")
            return nil
        }
        var node = first
        for _ in 0..<index {
            node = node?.next
        }
        return node!
    }
    //清除所有
    func clear() {
        size = 0
    }
    //获取第一个元素
    func getFirst() -> Node? {
        guard count > 0 else {
            print("链表是空")
            return nil
        }
        return first
    }
    //获取链表最后一个元素
    func getLast() -> Node? {
        guard count > 0 else {
            print("链表是空")
            return nil
        }
        return indexOf(index: count - 1)
    }
    
}
class Node: NSObject {
    var element: Any?
    
    var next: Node?
    
    init(e:Any) {
        self.element = e
        super.init()
    }
}
