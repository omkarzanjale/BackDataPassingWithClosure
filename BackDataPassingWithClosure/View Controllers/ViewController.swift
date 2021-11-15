//
//  ViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 11/09/21.
//

import UIKit

class ViewController: UIViewController {
    //outlet of textField
    @IBOutlet weak var textField:UITextField!
    
    //button action
    @IBAction func nextBtn(){
        //object of SecondViewController
        if let VC2Obj = storyboard?.instantiateViewController(identifier: "SecondViewController")as? SecondViewController{
            
            //getting data from SecondViewController via closure
            VC2Obj.vc2Closure = {data in
                //assigning data from SecondViewController to textField
                self.textField.text = data
            }
            //passing data to SecondViewController
            VC2Obj.dataFromVC = textField.text
            
            //forward naviagation
            navigationController?.pushViewController(VC2Obj, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Page"
    }
}

