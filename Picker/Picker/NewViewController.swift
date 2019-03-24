//
//  NewViewController.swift
//  Picker
//
//  Created by Cindy Royal on 3/24/19.
//  Copyright © 2019 Cindy Royal. All rights reserved.
//

import UIKit
class Global {
    var pickerVar = String()
}

let global = Global()

class NewViewController: UIViewController {

    @IBOutlet weak var myPicker: UILabel!
    
    //use this if using a simple segue to return to inital VC
    override func viewDidLoad() {
        super.viewDidLoad()
myPicker.text = "Picker: \(global.pickerVar)"
        // Do any additional setup after loading the view.
    }
    
    // use this if using an Embedded Navigation Controller
    override func viewWillAppear(_ animated: Bool) {
        myPicker.text = "Picker: \(global.pickerVar)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
