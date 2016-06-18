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
    
    for i in 0...array.count-1 {
        if newArray.contains(array[i]) {
            
        } else {
            newArray.append(array[i])
        }
    }
    
    for i in 0 ..< newArray.count {
        for j in 0 ..< newArray.count-1-i {
            if newArray[j] > newArray[j+1] {
                let temp = newArray[j]
                newArray[j] = newArray[j+1]
                newArray[j + 1] = temp
            }
        }
    }    
    return newArray
    }
}
