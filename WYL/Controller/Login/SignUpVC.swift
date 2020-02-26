//
//  SignUpVC.swift
//  WYL
//
//  Created by Tushar Singh on 25/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignUpVC: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confPasswordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var fb: UIButton!
    @IBOutlet weak var type: UIButton!
    
    var params=[String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        send.layer.cornerRadius = send.frame.height/2
        fb.layer.cornerRadius = fb.frame.height/2
        fb.imageView?.contentMode = .scaleAspectFit
        addCorner(tf: [emailTF,nameTF,passwordTF,confPasswordTF])
        emailTF.layer.cornerRadius = 25
        autoShrink(button: [fb,send,type])
    }
    
    func autoShrink(button:[UIButton]){
        for i in button{
            i.titleLabel?.adjustsFontSizeToFitWidth = true
        }
    }
    
    func addCorner(tf:[UITextField]){
        for i in tf{
            i.layer.cornerRadius = i.frame.height/2
        }
        
    }
    
    @IBAction func send(_ sender: Any) {
        if nameTF.text != "" && emailTF.text != "" && confPasswordTF.text != "" && passwordTF.text != "" {
            let end = "api/users/register"
            
            if type.titleLabel?.text == "I AM A RENTER"{
                params = ["name":nameTF.text!,"email":emailTF.text!,"password":passwordTF.text!,"conf_password":confPasswordTF.text!,"user_type":"landlord"]
            }else{
                params = ["name":nameTF.text!,"email":emailTF.text!,"password":passwordTF.text!,"conf_password":confPasswordTF.text!,"user_type":"renter"]
            }
            
            AF.request(URL(string: base+end)!, method: .post, parameters: params, encoding: URLEncoding.default, headers: .init(headers)).responseJSON { (response) in
                let dat = JSON(response.data as Any)
                print(dat)
                if dat["status"].boolValue==true{
                    //Segue to main
                }
            }
        }
        
    }
    @IBAction func fb(_ sender: Any) {
        
    }
    var ctr=0
    @IBAction func type(_ sender: Any) {
        ctr+=1
        if(ctr%2==1){
            type.setTitle("I AM A RENTER", for: .normal)
        }
        else{
            type.setTitle("I AM A LANDLORD", for: .normal)
        }
        
    }
}
