//  CellStudentList.swift
//  MVVMUsingSwift
//
//  Created by Maze Geek on 6/14/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//
import UIKit

class CellStudentList: UITableViewCell {
    @IBOutlet weak var labelName: UILabel!

    @IBOutlet weak var labelAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    var studentObj : Student?{
        didSet{
            cellDataSet()
        }
    }
    
    func cellDataSet()  {
        labelName.text = studentObj?.name
        labelAddress.text = studentObj?.address
    }
    


}
