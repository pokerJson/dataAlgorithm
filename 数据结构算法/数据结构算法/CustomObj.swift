//
//  CustomObj.swift
//  数据结构算法
//
//  Created by CYAX_BOY on 2020/11/22.
//
import UIKit

extension UIViewController {
    
    //代码的执行时间计算
    func excuteTime(name: String,fuction: @escaping () -> ()) -> Void {
        let startTime: CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
        //执行的代码块
        fuction()
        
        let endTime: CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
        print(name + "代码执行时长：\((endTime - startTime)*1000/60) 毫秒")
    }
    
}
