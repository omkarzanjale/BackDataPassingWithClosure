//
//  SecondViewController.swift
//  DataPassingFromThirdVCWithClosure
//
//  Created by Mac on 14/09/21.
//

import UIKit

class SecondViewController: UIViewController {
    //
    //MARK: Outlet
    //
    @IBOutlet weak var label : UILabel!
    
    var dataFromVC3:String?
    var dataFromVC : String?
    //
    //MARK: Closure Declaration
    //
    var vc2Closure:((String?)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second Page"
        label.text = dataFromVC
    }
    
    @IBAction func nextBtnAction(){
        if let VC3Obj = storyboard?.instantiateViewController(identifier: "ThirdViewController")as? ThirdViewController{
            if dataFromVC3 == nil{
                VC3Obj.vc3Closure = {data in
                    self.dataFromVC3 = data
                    self.label.text = data
                }
                VC3Obj.dataFromVC2 = label.text
                navigationController?.pushViewController(VC3Obj, animated: true)
            }else{
                vc2Closure?(label.text)
                navigationController?.popViewController(animated: true)
            }
        }
    }
}
