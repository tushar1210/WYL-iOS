//
//  LoginVC.swift
//  WYL
//
//  Created by Tushar Singh on 22/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit
import Alamofire

class LoginVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var fb: UIButton!
    @IBOutlet weak var apple: UIButton!
    
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
    
    }
    
    @IBAction func fb(_ sender: Any) {
    
    }
    @IBAction func apple(_ sender: Any) {
    }
    
}
