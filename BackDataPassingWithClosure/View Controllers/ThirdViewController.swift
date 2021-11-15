//
//  ThirdViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 11/09/21.
//

import UIKit

class ThirdViewController: UIViewController {
    //outlet of textField
    @IBOutlet weak var lastTextField:UITextField!
    
    //Variable to store data passed from secondViewController
    var dataFromVC2 : String?
    
    //closure declairation to pass data back from this to SecondViewController
    var vc3Closure : ((String?)->())?
    
    //marks : Function with button action
    @IBAction func showDataBtn(){
        //passing value to SecondViewController via closure
        vc3Closure?(lastTextField.text)
        
        //back navigation
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third Page"
        //display data passed from secondViewController
        lastTextField.text = dataFromVC2
    }
}
