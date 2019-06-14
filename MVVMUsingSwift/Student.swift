//  Student.swift
//  MVVMUsingSwift
//
//  Created by Maze Geek on 6/14/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.

import Foundation
class Student {
    //This is student model class 
    //we can create two property
    
    var name:String?
    var address:String?
    init() {
    }
    
    init(name:String?,address:String?) {
        self.name = name
        self.address = address
    }
    
    //Now we can create view controller and viewmodel 
}
