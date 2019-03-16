//
//  ViewController.swift
//  Color Picker
//
//  Created by Dylan barrett on 3/16/19.
//  Copyright © 2019 Dylan barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    struct Color {
        var name: String
        var uiColor: UIColor
    }
    
    var colors = [
    Color(name: "Red", uiColor: UIColor.red),
    Color(name: "Orange", uiColor: UIColor.orange),
    Color(name: "Yellow", uiColor: UIColor.yellow),
    Color(name: "Green", uiColor: UIColor.green),
    Color(name: "Blue", uiColor: UIColor.blue),
    Color(name: "Purple", uiColor: UIColor.purple),
    Color(name: "Brown", uiColor: UIColor.brown),
    Color(name: "Cyan", uiColor: UIColor.cyan),
    Color(name: "Dark Gray", uiColor: UIColor.darkGray),]
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        view.backgroundColor = colors[0].uiColor
        label.text = colors[0].name
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
}
