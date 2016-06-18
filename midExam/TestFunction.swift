//
//  TestFunction.swift
//  midExam
//
//  Created by Leo on 6/17/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class TestFunction: NSObject {
    
func sortArray(array1:[Int], array2:[Int]) -> [Int] {

    var array:[Int] = array1 + array2
    var newArray:[Int] = []
    
    for i in 0 ..< array.count {
        for j in 0 ..< array.count-1-i {
            if array[j] > array[j+1] {
                let temp = array[j]
                array[j] = array[j+1]
                array[j + 1] = temp
            }
        }
    }
    
    for i in 0...array.count-1 {
        if newArray.contains(array[i]) {
            
        } else {
            newArray.append(array[i])
        }
    }
    return newArray
    }
}
