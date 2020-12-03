//
//  ViewController.swift
//  数据结构算法
//
//  Created by CYAX_BOY on 2020/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1、斐波那契数列,求第N个数是什么？
        print(feibnq2(n: 30))
        self.excuteTime(name: "feibnq1") {//尾随逃逸闭包
            self.feibnq1(n: 30)
        }
        self.excuteTime(name: "feibnq2") {
            self.feibnq2(n: 30)
        }

        //2 链表
        lianbiao()
        
        
    }
    func feibnq1(n: Int) -> Int {
        
        //0 1 1 2 3 5 8 13 21 ......
        //方法1 递归性能欠佳 比如求第60个
        guard n > 1 else { return n }
        return feibnq1(n: n-1) + feibnq1(n: n-2)
    
    }
    func feibnq2(n: Int) -> Int {
        
        //0 1 1 2 3 5 8 13 21 ......
        //方法2 性能更加
        /*
            求第2个 0+1
            求第3个 0+1 1+1
            求第4个 0+1 1+1 1+2
            求第n个 0+1 1+1 1+2 ....
            定义first second 往后移动
         */
        guard n > 1 else { return n }
        var first = 0
        var second = 1
        for _ in 0..<n-1 {
            let sum = first + second
            first = second
            second = sum
        }
        return second
    }

    func lianbiao() {
        let link = LinkList()
        link.add(node: Node(e: 11))
        link.add(node: Node(e: 22))
        link.add(node: Node(e: 33))
        link.add(node: Node(e: 44))
        link.add(node: Node(e: 55))
        link.insertNode(index: 1, node: Node(e: 100))
        print(link.count)
        print(link.indexOf(index: 1).element)
        link.deleteNode(index: 1)
        print(link.indexOf(index: 1).element)
        
        print(link.indexOf(index: 0).element)
        link.deleteNode(index: 0)
        print(link.indexOf(index: 0).element)



    }

}

