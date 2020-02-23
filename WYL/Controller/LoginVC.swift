//
//  LoginVC.swift
//  WYL
//
//  Created by Tushar Singh on 22/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var fb: UIButton!
    @IBOutlet weak var apple: UIButton!
    
    var end = URL(string: base+"api/users/login")!
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCornerRadius(button: loginButton)
        addCornerRadius(button: fb)
        addCornerRadius(button: apple)
        fb.imageView?.contentMode = .scaleAspectFit
        apple.imageView?.contentMode = .scaleAspectFit
        apple.layer.borderWidth=1
        apple.layer.borderColor=UIColor.black.cgColor
        
    }
    
    
    
    func addCornerRadius(button:UIButton){
           button.layer.cornerRadius = button.frame.height/2
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        if emailTF.text != "" && passwordTF.text != ""{
            let params:Dictionary = ["email":emailTF.text!,"password":passwordTF.text!] as [String : String]
            AF.request(end, method: .post, parameters: params, encoding: URLEncoding.default, headers: .init(headers)).responseJSON { (response) in
                let dat = JSON(response.data!)
                if(dat["status"].boolValue==true){
                    print(dat)
                    self.user.name = dat["user"]["name"].stringValue
                    self.user.id = dat["user"]["id"].stringValue
                    self.user.userType = dat["user"]["user_type"].stringValue
                    self.user.email = dat["user"]["email"].stringValue
                    self.user.country = dat["user"]["country"].stringValue
                }else{
                    let ac = UIAlertController(title: "Incorrect Credentials", message: "Please check the credentials", preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK", style: .default) { (action) in
                        ac.dismiss(animated: true)
                    }
                    ac.addAction(action)
                    self.present(ac,animated: true)
                }
            }
            
        
        }
        
    }
        
    
    @IBAction func fb(_ sender: Any) {
    
    }
    @IBAction func apple(_ sender: Any) {
    }
    
}

//var a:Dictionary?

