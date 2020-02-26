//
//  ForgotPassVC.swift
//  WYL
//
//  Created by Tushar Singh on 24/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ForgotPassVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var send: UIButton!
    
    var end = "api/users/forgot"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        send.layer.cornerRadius = send.frame.height/2
        
        send.layer.cornerRadius = send.frame.height/5

    }
    

    @IBAction func send(_ sender: Any) {
        let params:Parameters = ["email":emailTF.text!]
        if(emailTF.text! != ""){
            AF.request(URL(string: base+end)!, method: .post, parameters: params,encoding: URLEncoding.default, headers: .init(headers)).responseJSON{
                (response) in
                let dat = JSON(response.data!)
                if(dat["status"].boolValue==false){
                    let alertController = UIAlertController(title: "Error", message: dat["message"].stringValue, preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK", style: .default) {(action) in
                        alertController.dismiss(animated: true, completion: nil)
                    }
                    alertController.addAction(action)
                    self.present(alertController,animated: true)
                }else{
                    let alertController = UIAlertController(title: "Success", message: "Please check your email to change the password", preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK", style: .default) {(action) in
                        self.dismiss(animated: true, completion: nil)
                    }
                    alertController.addAction(action)
                    self.present(alertController,animated: true)
                }
                print(JSON(dat))
            }
        }else{
            let alertController = UIAlertController(title: "Fail", message: "Please enter a valid email id to change the password", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) {(action) in
                alertController.dismiss(animated: true, completion: nil)
            }
            alertController.addAction(action)
            self.present(alertController,animated: true)
        }
    }
    
}
