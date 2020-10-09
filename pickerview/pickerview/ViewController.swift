//
//  ViewController.swift
//  pickerview
//
//  Created by Hagedorn on 10/9/20.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var colors = ["Red","Orange","Yellow","Green","Blue","Purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.view.backgroundColor = UIColor.red
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayLabel.text = colors[row]
        switch colors[row] {
        case "Red":
            self.view.backgroundColor = UIColor.red
        case "Orange":
            self.view.backgroundColor = UIColor.orange
        case "Yellow":
            self.view.backgroundColor = UIColor.yellow
        case "Green":
            self.view.backgroundColor = UIColor.green
        case "Blue":
            self.view.backgroundColor = UIColor.blue
        case "Purple":
            self.view.backgroundColor = UIColor.purple
        default:
            break
        }
    }
}
