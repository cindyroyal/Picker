//
//  ViewController.swift
//  Picker
//
//  Created by Cindy Royal on 3/24/19.
//  Copyright © 2019 Cindy Royal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let items = ["Item1", "Item2", "Item3", "Item4"]
    
    @IBOutlet weak var selectedLabel: UILabel!
    var selection:String!
    @IBOutlet weak var picker: UIPickerView!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        selectedLabel.text = "You selected: " + selection
        global.pickerVar = selection
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
         
        // Do any additional setup after loading the view, typically from a nib.
    }


}

