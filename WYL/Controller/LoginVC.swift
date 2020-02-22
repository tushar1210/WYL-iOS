//
//  LoginVC.swift
//  WYL
//
//  Created by Tushar Singh on 22/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var fb: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    func addCornerRadius(button:UIButton){
           button.layer.cornerRadius = button.frame.height/2
    }
    
    @IBAction func loginButton(_ sender: Any) {
    
    }
    
    @IBAction func fb(_ sender: Any) {
    
    }
    
}
