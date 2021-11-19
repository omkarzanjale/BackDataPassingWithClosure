//
//  ViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 11/09/21.
//

import UIKit

class ViewController: UIViewController {
    //
    //MARK: Outlets
    //
    @IBOutlet weak var textField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Page"
    }
    
    @IBAction func nextBtn(){
        if let VC2Obj = storyboard?.instantiateViewController(identifier: "SecondViewController")as? SecondViewController{
            VC2Obj.vc2Closure = {data in
                self.textField.text = data
            }
            VC2Obj.dataFromVC = textField.text
            navigationController?.pushViewController(VC2Obj, animated: true)
        }
    }
}

