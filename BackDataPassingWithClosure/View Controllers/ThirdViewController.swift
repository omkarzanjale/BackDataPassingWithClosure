//
//  ThirdViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 11/09/21.
//

import UIKit

class ThirdViewController: UIViewController {
    //
    //MARK: Closure Declaration
    //
    @IBOutlet weak var lastTextField:UITextField!
    
    var dataFromVC2 : String?
    var vc3Closure : ((String?)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third Page"
        //display data passed from secondViewController
        lastTextField.text = dataFromVC2
    }
    
    @IBAction func showDataBtn(){
        vc3Closure?(lastTextField.text)
        navigationController?.popViewController(animated: true)
    }
}
