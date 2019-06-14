//  StudentListViewController.swift
//  MVVMUsingSwift
//
//  Created by Maze Geek on 6/14/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {
    @IBOutlet weak var textFieldAddress: UITextField!

    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let studentViewModel = StudentListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Now first we create add method in view model class
        tableViewSetup()
        //now we access view model first create view model object
        
        studentViewModel.reloadStudentList = { [weak self] ()  in
            self?.tableView.reloadData()
        }
        //now run project
    }

    @IBAction func buttonHandlerAddData(_ sender: Any) {
        //This is over add data action method
        
        if (textFieldName.text?.characters.count ?? 0 > 0) && (textFieldAddress.text?.characters.count ?? 0 > 0)
        {
            studentViewModel.addStudentData(name: textFieldName.text, address: textFieldAddress.text)
            
            //for remove value from list after adding data
            textFieldName.text = ""
            textFieldAddress.text = ""
            self.view.endEditing(true)
        }
        else
        {
           //
        }
        
        //now we crate clouser method for reload data
    }
}

// Creating extension is an example of Open Close design pattren
// Implemented table view

extension StudentListViewController: UITableViewDataSource,UITableViewDelegate{
    func tableViewSetup()  {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.arrayOfStudent?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CellStudentList = tableView.dequeueReusableCell(withIdentifier: String(describing: CellStudentList.self)) as! CellStudentList
        
        //now we set student data into cell 
        //for that we use cell file
        cell.studentObj = studentViewModel.arrayOfStudent?[indexPath.row]
        
        //Now we get data from textfield and add into model
        
        return cell
    }
}









