//  StudentViewModel.swift
//  MVVMUsingSwift
//
//  Created by Maze Geek on 6/14/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.

import Foundation

class StudentListViewModel {
        //This is viewmodel class of studentlistviewController
    
    var reloadStudentList = {() -> () in }
    //First crate array of student
    var arrayOfStudent : [Student]? = []{
        didSet{
            //hear we call clouser to reload data
            reloadStudentList()
            //now we impliment the table view logic in view controller file
        }
    }
    
    func addStudentData(name:String?,address:String?)  {
        arrayOfStudent?.append(Student(name: name, address: address))
        //now data add so we reload data for that use closuser
    }
    
}
