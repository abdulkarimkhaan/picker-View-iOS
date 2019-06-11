//
//  ViewController.swift
//  pickerview
//
//  Created by Abdul  Karim Khan on 11/06/2019.
//  Copyright © 2019 Abdul  Karim Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectaday: UITextField!
    let days = ["monday","wednesday"]
    var selectedDay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createDayPicker()
    }
    
    func createDayPicker(){
        let dayPicker = UIPickerView()
        dayPicker.delegate = self
        selectaday.inputView = dayPicker
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDay = days[row]
        selectaday.text = selectedDay
    }
    
}
