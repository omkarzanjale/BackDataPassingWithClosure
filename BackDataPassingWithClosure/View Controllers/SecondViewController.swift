//
//  SecondViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 14/09/21.
//

import UIKit

class SecondViewController: UIViewController {
    //outlet of label
    @IBOutlet weak var label : UILabel!
    
    var dataFromVC3:String?
    
    //variable which stores data from ViewController
    var dataFromVC : String?
    
    //closure declaration to pass data back from this to ViewController
    var vc2Closure:((String?)->())?
    
    //button action
    @IBAction func nextBtnAction(){
        //creating object of ThirdViewController
        if let VC3Obj = storyboard?.instantiateViewController(identifier: "ThirdViewController")as? ThirdViewController{
            
            //not working exact
            if dataFromVC3 == nil{
                //accessing closure data
                VC3Obj.vc3Closure = {data in
                    self.dataFromVC3 = data
                    //assign data passed from ThirdViewController to label
                    self.label.text = data
                }
                //passing data to ThirdViewController
                VC3Obj.dataFromVC2 = label.text
                
                navigationController?.pushViewController(VC3Obj, animated: true)
            }else{
                
                //passing value to ViewController via closure
                vc2Closure?(label.text)
                //back navigation
                navigationController?.popViewController(animated: true)
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second Page"
        //display data from ViewController
        label.text = dataFromVC
    }
}
