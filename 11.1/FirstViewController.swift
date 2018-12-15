//
//  ViewController.swift
//  11.1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit

//protocol StudentProtocol {//反向传参第一种协议方法
//    func change(name:String,no:String)
//}

class FirstViewController: UIViewController{//,StudentProtocol
//    func change(name: String, no: String) {//反向传参第一种方法
//        self.name = name
//        self.no = no
//    }
    

//    var no = ""//反向传参第一种方法
//    var name = ""
    
    var stu = Student()
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
//        tfNo.text = no//反向传参第一种方法
//        tfName.text = name
        
        tfNo.text = stu.no
        tfName.text = stu.name
        
    }
    
    
    @IBAction func showSecondVC(_ sender: Any) {
//        no = tfNo.text!//反向传参第一种方法
//        name = tfName.text!
        
        stu.no = tfNo.text!
        stu.name = tfName.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        self.navigationController?.pushViewController(secVC, animated: true)
//        secVC.no = no//反向传参第一种方法
//        secVC.name = name
//        secVC.delegate = self
        
        secVC.stu = stu        
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        present(thirdVC,animated: true,completion: nil)
    }
}

