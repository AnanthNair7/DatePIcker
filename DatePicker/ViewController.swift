//
//  ViewController.swift
//  DatePicker
//
//  Created by Ananth Nair on 03/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        
        dateTextField.text = formateDate(date: Date())
        
        dateTextField.inputView = datePicker
    }
    @objc func dateChange(datePicker:UIDatePicker){
        dateTextField.text = formateDate(date: datePicker.date)
    }
    
    func formateDate(date : Date) -> String {
        let formate = DateFormatter()
        formate.dateFormat = "MMMM dd yyy"
        return formate.string(from: date)
    }


}

