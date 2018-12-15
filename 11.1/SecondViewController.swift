//
//  SecondViewController.swift
//  11.1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

//    var no = ""//反向传参第一种方法
//    var name = ""
//    var delegate:StudentProtocol?
    
    var stu:Student!
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tfNo.text = no//反向传参第一种方法
//        tfName.text = name
        
        tfNo.text = stu.no
        tfName.text = stu.name
    }
    
    @IBAction func back(_ sender: Any) {
        
//        no = tfNo.text!//反向传参第一种方法
//        name = tfName.text!
//        delegate?.change(name: name,no: no)
       
        stu.no = tfNo.text!
        stu.name = tfName.text!
        navigationController?.popViewController(animated: true)
        
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
